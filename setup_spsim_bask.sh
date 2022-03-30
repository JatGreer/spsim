#!/usr/bin/bash
module purge
module load baskerville
module load CUDA
module load HDF5
module load FFTW

conda activate qxnr1665_conda

# env variables for compilation
export CXX=$(which g++)
export CUDACXX=$(which nvcc)
export CMAKE_CUDA_ARCHITECTURES=80 # CUDA arch for k80s on SCARF
export FFTW_ROOT=$CONDA_PREFIX