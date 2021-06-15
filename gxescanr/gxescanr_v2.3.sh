#!/bin/bash
#SBATCH --time=300:00:00
#SBATCH --ntasks=1
#SBATCH --mem=8GB
#SBATCH --account=dconti_251
#SBATCH --partition=conti
#SBATCH --mail-user=andreeki@usc.edu
#SBATCH --mail-type=END
#SBATCH --array=22-22

module load gcc/8.3.0
module load openblas/0.3.8
module load r/3.6.3

Rscript gxescanr_v2.3.R ${SLURM_ARRAY_TASK_ID} ${exposure}
