#!/bin/bash
#SBATCH --time=20:00:00
#SBATCH --ntasks=1
#SBATCH --mem=8GB
#SBATCH --account=dconti_251
#SBATCH --partition=conti
#SBATCH --output=./logs/step03_merge_v2.log

module load gcc/8.3.0
module load openblas/0.3.8
module load r/3.6.3

plink --memory 8000 --merge-list ./merge_list_genomewide_v2.txt --make-bed --out ./figi_gxe_2500samples_v2

