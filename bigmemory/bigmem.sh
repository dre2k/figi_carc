#!/bin/bash
#SBATCH --time=23:00:00
#SBATCH --ntasks=1
#SBATCH --mem=16GB
#SBATCH --account=dconti_251
#SBATCH --array=1-9

module load gcc/8.3.0
module load openblas/0.3.8
module load r/3.6.3
module load unzip

Rscript bigmem.R ${SLURM_ARRAY_TASK_ID}


#/scratch/andreeki/gwis/posthoc/${exposure}/expectation_hybrid/${exposure}_snplist_twostep_${statistic}_bin${SLURM_ARRAY_TASK_ID}.rds

