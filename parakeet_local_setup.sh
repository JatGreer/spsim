#!/usr/bin/bash
# If doing first time setup, create a workdir and install python and clone
# sp-sim repo using the python_local_setup.sh script

# example use:
# parakeet_local_setup.sh myworkdir
#  where myworkdir is the sp-sim directory which you pulled

# check you are on the branch you want to be on, then:

# env variables for compilation
export CXX=$(which g++)
export CUDACXX=$(which nvcc)
export CMAKE_CUDA_ARCHITECTURES=52 # CUDA arch for GTX-970 on PC
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/lib/:/usr/local/lib/
# export FFTW_ROOT=$"/usr/local/" not need in local due to ld lib path update
# export FFTW_LIBRARIES=$"/usr/lib/" not needed in local due to ld lib path update

# install and test...
git clone https://github.com/rosalindfranklininstitute/amplus-digital-twin.git
pushd amplus-digital-twin
git submodule update --init --recursive # installing another git repo as a 'submodule' and recursive submodules
pip install -r requirements.txt # install from requirements file
pip install -e . # this is an editable install
pytest # run the (unit?) tests
popd