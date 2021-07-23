#!/bin/bash
#SBATCH --time=20:00:00
#SBATCH --ntasks=1
#SBATCH --mem=8GB
#SBATCH --account=dconti_251
#SBATCH --partition=conti
#SBATCH --array=1-22

module load gcc/8.3.0
module load openblas/0.3.8
module load r/3.6.3

idir="/project/dconti_250/HRC_VCF_SampleRename"
odir="/scratch/andreeki/PCA_check"
#batch="axiom_acs_aus_nf"

#mkdir -p ./${batch}

plink2 --pfile ${odir}/${batch}/${batch}_chr${SLURM_ARRAY_TASK_ID}_step01  --memory 8000 --make-bed --out ${odir}/${batch}/${batch}_chr${SLURM_ARRAY_TASK_ID}_step01

