#!/bin/bash
#SBATCH --time=300:00:00
#SBATCH --ntasks=1
#SBATCH --mem=8GB
#SBATCH --account=lc_dvc
#SBATCH --partition=conti
#SBATCH --constraint=IB
#SBATCH --mail-user=andreeki@usc.edu
#SBATCH --mail-type=END
#SBATCH --array=1-22

mkdir -p /staging/dvc/andreeki/gwis/results/${exposure}
Rscript gxescan.R ${SLURM_ARRAY_TASK_ID} ${exposure}
