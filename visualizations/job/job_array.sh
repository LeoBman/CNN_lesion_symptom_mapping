#!/bin/bash

#$ -q JM
#$ -cwd
#$ -pe smp 4
#$ -j y
#$ -N lesion_masks_3D_render_par
#$ -t 1-360

source activate theano_py27
python ../3d_animation_parallel_jobs.py $SGE_TASK_ID
