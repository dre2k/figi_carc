#!/bin/bash
#SBATCH --time=300:00:00
#SBATCH --ntasks=1
#SBATCH --mem=8GB
#SBATCH --account=lc_dvc
#SBATCH --partition=conti
#SBATCH --constraint=IB
#SBATCH --mail-user=andreeki@usc.edu
#SBATCH --mail-type=END
#SBATCH --array=4

Rscript gxescanr.R ${SLURM_ARRAY_TASK_ID} /scratch/andreeki/gwis/results/input/FIGI_v2.3_gxeset_${exposure}_basic_covars_gxescan
