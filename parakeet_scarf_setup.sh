# drop into a gpu node on SCARF
module load Anaconda3/2019.10
module load Python/3.9.5-GCCcore-10.3.0
module load GPUmodules
module load FFTW/3.3.9-gompi-2021a
module load CUDA/11.1.1-GCC-10.2.0

# conda create --name parakeet_env python=3.9 
# installed in /home/vol01/scarf911/.conda/envs/parakeet_env/
# but should be able to just use the following from any location
# conda init parakeet_env
conda activate parakeet_env

# install some specific dependencies
# conda install -c conda-forge fftw gxx=10 cudatoolkit-dev pytest pytest-cov

# env variables for compilation
export CXX=$(which g++)
export CUDACXX=$(which nvcc)
export CMAKE_CUDA_ARCHITECTURES=80 # CUDA arch for a100s on SCARF
export FFTW_ROOT=$CONDA_PREFIX

# install and test...
git clone https://github.com/rosalindfranklininstitute/amplus-digital-twin.git
pushd amplus-digital-twin
git submodule update --init --recursive
pip install --user -r requirements.txt
pip install -e .

pytest
popd