#!/bin/sh
#PBS -q h-short
#PBS -l select=1:ncpus=1:mpiprocs=1:ompthreads=1
#PBS -l walltime=1:00:00
#PBS -W group_list=gp14
cd $PBS_O_WORKDIR
. /etc/profile.d/modules.sh
source /lustre/gp14/p14009/.bashrc
conda activate /lustre/gp14/p14009/anaconda3/envs/generate_airfoil
module load anaconda3/4.3.0 cuda9/9.0.176 tensorflow/1.8.0
cd airfoil-opt-gan
python train.py startover
