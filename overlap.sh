#!/bin/bash

#SBATCH --partition=amilan
#SBATCH --qos=normal
#SBATCH --time=24:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=64
#SBATCH --output=gromacs.out
#SBATCH --account=ucb364_peak2
#SBATCH --mail-type=ALL

