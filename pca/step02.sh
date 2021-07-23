#!/bin/bash
#SBATCH --time=20:00:00
#SBATCH --ntasks=1
#SBATCH --mem=8GB
#SBATCH --account=dconti_251
#SBATCH --partition=conti

module load gcc/8.3.0
module load openblas/0.3.8
module load r/3.6.3

idir="/project/dconti_250/HRC_VCF_SampleRename"
odir="/scratch/andreeki/PCA_check"

ls ./${batch}/${batch}_chr*.log > ./${batch}/merge_list.txt
sed -i 's/.log//g' ./${batch}/merge_list.txt

plink --memory 8000 --merge-list ./${batch}/merge_list.txt --make-bed --out ./${batch}/${batch}

