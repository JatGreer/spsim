#!/usr/bin/bash
# example use:
# python_local_setup.sh myworkdir pyenvname
# If you are already in a workdir you have created should just be able to use:
# python_local_setup.sh . pyenvname

workdir="$1"
pyenv="$2"

popd

mkdir "$workdir"
pushd "$workdir"

# if you haven't got python 3.9, install python 3.9
# Setup up a venv you can use to install requirements via pip
# python3.9 -m venv "$pyenv" python3.9 resulted in error
"""
CMake Error in CMakeLists.txt:
    Imported target pybind11::module includes non-existent path
  
      /usr/include/python3.9
"""
python3 -m venv "$pyenv"
source "$pyenv/bin/activate"
# "deactivate" is used to deactivate your python environment 

pip3 install pytest
pip3 install pytest-cov

# if you didn't get this script via cloning you git repo now grab the sp-sim fork
# git clone git@github.com:JatGreer/spsim.git

# End of script
# Now you should have a python env setup and activated
# as well as the fork of sp-sim pulled to your work directory