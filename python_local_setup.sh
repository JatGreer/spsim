#!/usr/bin/bash
# example use:
# python_local_setup.sh pyenvname

pyenv="$1"

popd

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