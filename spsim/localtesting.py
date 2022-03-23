from datetime import datetime
from time import sleep

import click
import zarr
from dask.distributed import Client
from dask_jobqueue import SLURMCluster
from humanize import naturaldelta

from simulation_functions import prepare_simulation
from utils import zarr2mrcs, json2star

input_directory = '/home/jg/parakeet/testing/'
output_basename = '/home/jg/parakeet/output_testing/test'
n_images = 10
image_sidelength = 800
min_defocus = 1
max_defocus = 10
random_seed = 158
n_gpus = 1

# create simulation
simulation = prepare_simulation(
    input_directory=input_directory,
    output_basename=output_basename,
    n_images=n_images,
    image_sidelength=image_sidelength,
    defocus_range=(min_defocus, max_defocus),
    random_seed=random_seed
)

n_structure_files = len(simulation.config.structure_files)

start_time = datetime.now()

jf = f'{simulation.config.output_basename}.json'
with open(jf, 'w') as f:
    f.write(simulation.json())

zf = simulation.zarr_filename

simulation.create_zarr_store()
for idx in range (n_images):
    simulation.simulate_image(idx)

za = zarr.convenience.open(zf)
while za.nchunks_initialized < za.nchunks:
    now = datetime.now()
    particles_simulated = za.nchunks_initialized
    particles_simulated_str = f'{particles_simulated} / {n_images} particles simulated'
    elapsed_time = naturaldelta(now - start_time, minimum_unit='seconds')

    if particles_simulated > 0:
        time_per_particle = (now - start_time).total_seconds() / particles_simulated
    else:
        time_per_particle = 9999.99
    print(
        f'{particles_simulated_str} in {elapsed_time} (avg. {time_per_particle:.2f}s per particle)        \r',
        nl=False
    )
    sleep(0.1)

zarr2mrcs(output_basename+'.zarr', output_basename+'.mrc')
json2star(output_basename+'.json', output_basename+'.star')
print(f'done!')