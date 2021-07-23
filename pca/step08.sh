#!/bin/bash
#SBATCH --time=20:00:00
#SBATCH --ntasks=1
#SBATCH --mem=16GB
#SBATCH --account=dconti_251
#SBATCH --partition=conti
#SBATCH --output=./logs/step08_pca.log

module load gcc/8.3.0
module load openblas/0.3.8
module load r/3.6.3

plink2 --bfile ./figi_gxe_30000snps --memory 16000 --pca approx --out figi_gwas_pca_v2.3_EUR_131677
