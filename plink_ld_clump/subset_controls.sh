#!/bin/bash
#SBATCH --time=23:00:00
#SBATCH --ntasks=1
#SBATCH --mem=8GB
#SBATCH --account=lc_dvc
#SBATCH --partition=conti
#SBATCH --array=1-22

# I already converted corect_oncoarray vcf into plink format. Now just subset controls for LD calculations and clumping

plink --bed /auto/pmd-01/andreeki/clump/corect_oncoarray_chr${SLURM_ARRAY_TASK_ID}.bed --bim /auto/pmd-01/andreeki/clump/corect_oncoarray_chr${SLURM_ARRAY_TASK_ID}_fix.bim --fam /auto/pmd-01/andreeki/clump/corect_oncoarray_chr${SLURM_ARRAY_TASK_ID}.fam --keep /auto/pmd-01/andreeki/clump/corect_oncoarray_controls_12684.txt --memory 8000 --make-bed --out /staging/dvc/andreeki/clump/corect_oncoarray_controls_chr${SLURM_ARRAY_TASK_ID}



#for i in {19..19}
#do
#  plink --bed /auto/pmd-01/andreeki/clump/corect_oncoarray_chr${i}.bed --bim /auto/pmd-01/andreeki/clump/corect_oncoarray_chr${i}_fix.bim --fam /auto/pmd-01/andreeki/clump/corect_oncoarray_chr${i}.fam --keep /auto/pmd-01/andreeki/clump/corect_oncoarray_controls_12684.txt --make-bed --out /staging/dvc/andreeki/clump/corect_oncoarray_controls_chr${i}
#done

