from spsim.simulation_functions import prepare_simulation
from spsim.data_model import Simulation

from .constants import TEST_DATA_DIR


def test_prepare_simulation():
    simulation = prepare_simulation(
        input_directory=TEST_DATA_DIR / 'trajectory',
        output_basename= 'pytest_test_prepare_simulation_output_basename', # added output_basename to make tests work
        n_images=200,
        image_sidelength=512,
        defocus_range=(0.5, 8.5),
        random_seed=12345,
    )
    assert isinstance(simulation, Simulation)
    assert len(simulation.per_image_parameters) == 200