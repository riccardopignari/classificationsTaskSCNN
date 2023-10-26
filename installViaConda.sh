#!/bin/bash

# Check if conda is installed
flagConda=false

if ! command -v conda &> /dev/null
then
    echo "It appears that CONDA is not installed"
    echo "Run the following commands to install it"
    echo ""
    echo "    wget https://repo.anaconda.com/miniconda/Miniconda3-py38_4.10.3-Linux-x86_64.sh"
    echo "    chmod +x Miniconda3-py38_4.10.3-Linux-x86_64.sh"
    echo "    ./Miniconda3-py38_4.10.3-Linux-x86_64.sh"
    echo ""
    echo "once done, restart the terminal"
    echo ""
else
    flagConda=true
fi


if $flagConda
then
    # Installing new enviroment via CONDA
    source /home/$USER/miniconda3/etc/profile.d/conda.sh
    conda create --name nest --file fullRequirements
    conda activate nest
    
    # Installing package via PIP
    pip install pynn==0.9.6
    pip install tensorflow
    pip install matplotlib
fi
