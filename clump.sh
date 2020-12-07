#!/bin/bash
#SBATCH --time=23:00:00
#SBATCH --ntasks=1
#SBATCH --mem=8GB
#SBATCH --account=lc_dvc
#SBATCH --partition=conti
#SBATCH --constraint=IB
#SBATCH --array=1-22

wdir=/scratch/andreeki/gwas
cdir=/scratch/andreeki/clump
#mkdir -p ${wdir/}

# main effects p value clump
plink \
    --bfile ${cdir}/figi_controls_1000 \
    --memory 8000 \
    --clump ${wdir}/manhattan_chiSqG_gwas_chr${SLURM_ARRAY_TASK_ID}_no_gwas \
    --clump-p1 0.00000005 --clump-r2 0.2 --clump-p2 1 \
    --out   ${wdir}/manhattan_chiSqG_gwas_chr${SLURM_ARRAY_TASK_ID}_no_gwas

