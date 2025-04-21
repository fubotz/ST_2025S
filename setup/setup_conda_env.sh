#!/bin/bash

# Step 1: Create a conda environment named 'ST_2025S' with Python 3.10
conda create -y -n ST_2025S python=3.10

# Step 2: Activate the conda environment
# This is needed because script shells need to source the conda base
source "$(conda info --base)/etc/profile.d/conda.sh"
conda activate ST_2025S

# Step 3: Install numpy==2.2.2 from requirements.txt
pip install -r requirements.txt

# Step 4: Install scipy
pip install scipy

# Step 5: Uninstall scipy
pip uninstall -y scipy

# Step 6: Print python version
python --version

# Step 7: Export list of installed packages
conda list > installed_packages.txt