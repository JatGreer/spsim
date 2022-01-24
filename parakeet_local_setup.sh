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
export FFTW_ROOT=$"/usr/local/"
export FFTW_LIBRARIES=$"/usr/local/lib/"

# install and test...
# git clone https://github.com/rosalindfranklininstitute/amplus-digital-twin.git
pushd amplus-digital-twin
git submodule update --init --recursive
pip install -r requirements.txt
pip install -e .
pytest
popd