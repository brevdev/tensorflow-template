#!/bin/bash

set -eo pipefail

conda init zsh
conda init bash 
eval "$(conda shell.bash hook)"
conda activate base
conda install -c conda-forge cudatoolkit=11.6 cudnn=8.1.0 -y
echo "export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$CONDA_PREFIX/lib/" >> ~/.zshrc
echo "export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$CONDA_PREFIX/lib/" >> ~/.bashrc
python3 -m pip install tensorflow  