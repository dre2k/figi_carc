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
odir="/scratch/andreeki/PCA"

plink2 --vcf ${idir}/${batch}_chr${SLURM_ARRAY_TASK_ID}.vcf.gz --memory 8000 --double-id --snps-only --min-alleles 2 --max-alleles 2 --keep ${odir}/figi_vcfid_sample_2500.txt --rm-dup exclude-all --make-pgen --out ${odir}/${batch}/${batch}_chr${SLURM_ARRAY_TASK_ID}_step01

