#!/bin/bash
#SBATCH --job-name="move-delx_rough"
#SBATCH --partition=cpu-2g
#SBATCH --ntasks=24
#SBATCH --time=14-0:0
#SBATCH --output=cout.txt
#SBATCH --error=cerr.txt
#SBATCH --chdir=.
###SBATCH --test-only

module load opt gcc mpi lammps/mpi

sbatch_pre.sh

mpirun lammps < in.droplet

sbatch_post.sh

