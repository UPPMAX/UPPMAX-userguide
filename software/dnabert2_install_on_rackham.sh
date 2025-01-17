#!/bin/bash
#
# Install DNABERT2 on Rackham
#
# Adapted from https://github.com/richelbilderbeek/create_dnabert2_singularity_container/blob/master/install_on_rackham.sh

# Clones DNABERT 2 in a folder, then installs it

module load python/3.8.7
git clone https://github.com/MAGICS-LAB/DNABERT_2
cd DNABERT_2
python3 -m pip install -r requirements.txt
cd ..

pip uninstall -y triton