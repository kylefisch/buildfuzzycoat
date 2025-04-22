#!/bin/bash

ml anaconda
conda create -n chimera
conda install -c insilichem pychimera chimera
conda activate chimera

#make a chimera dir
#i would personally recommend putting this in software
in_dir="/projects/<identikey>/software/anaconda/envs/chimera"

#run the installation script and move to main directory
bash $in_dir/scripts/install_chimera.sh
mv chimera-1.13.1-linux_x86_64.bin $in_dir
#unzip that bin file into a different folder
unzip $in_dir/chimera-1.13.1-linux_x86_64.bin -d $in_dir/chimera_install
#to further unzip and get files
$in_dir/chimera_install/chimera.bin
#write the path to the final chimera directory
export CHIMERADIR="$in_dir/bin" 
#if it gives the error: No space left on device: '/home/alun7358/.chimera', execute the following to move it and solve the problem:
#mv /home/alun7358/chimera /projects/alun7358/software

#at this point, in order to free up space, you can just move it to software/anaconda/envs/pychimera
