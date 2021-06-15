#!/bin/bash
#SBATCH --time=20:00:00
#SBATCH --ntasks=1
#SBATCH --mem=4GB
#SBATCH --account=dconti_251
#SBATCH --array=1-22


module load gcc/8.3.0
module load openblas/0.3.8
module load r/3.6.3

Rscript job01.R ${SLURM_ARRAY_TASK_ID}
