#!/bin/bash
#SBATCH --time=23:00:00
#SBATCH --ntasks=1
#SBATCH --mem=8GB
#SBATCH --account=lc_dvc
#SBATCH --array=1-8

# submit to slurm or just run script (if small number of SNPs) using bash


wrapper () {
                local exposure=${1}
                #local SLURM_ARRAY_TASK_ID=${2}
                Rscript ./extract_dosages_hybrid_twostep_functional_subset.R \
                /scratch/andreeki/gwis/twostep_expectation_hybrid/figi_controls_1000.rds \
                #/scratch/andreeki/gwis/twostep_expectation_hybrid/${exposure}/${exposure}_functional_annotation_subset_snplist_twostep_chiSqG_bin${SLURM_ARRAY_TASK_ID}.rds
                /scratch/andreeki/gwis/posthoc/${exposure}/expectation_hybrid/${exposure}_functional_annotation_subset_snplist_twostep_chiSqG_bin${SLURM_ARRAY_TASK_ID}.rds

                Rscript ./extract_dosages_hybrid_twostep_functional_subset.R \
                /scratch/andreeki/gwis/twostep_expectation_hybrid/figi_controls_1000.rds \
                #/scratch/andreeki/gwis/twostep_expectation_hybrid/${exposure}/${exposure}_functional_annotation_subset_snplist_twostep_chiSqGE_bin${SLURM_ARRAY_TASK_ID}.rds
                /scratch/andreeki/gwis/posthoc/${exposure}/expectation_hybrid/${exposure}_functional_annotation_subset_snplist_twostep_chiSqGE_bin${SLURM_ARRAY_TASK_ID}.rds

                Rscript ./extract_dosages_hybrid_twostep_functional_subset.R \
                /scratch/andreeki/gwis/twostep_expectation_hybrid/figi_controls_1000.rds \
                #/scratch/andreeki/gwis/twostep_expectation_hybrid/${exposure}/${exposure}_functional_annotation_subset_snplist_twostep_chiSqEDGE_bin${SLURM_ARRAY_TASK_ID}.rds
                /scratch/andreeki/gwis/posthoc/${exposure}/expectation_hybrid/${exposure}_functional_annotation_subset_snplist_twostep_chiSqEDGE_bin${SLURM_ARRAY_TASK_ID}.rds

#                Rscript extract_dosages_hybrid_twostep.R \
#                /scratch/andreeki/gwis/twostep_expectation_hybrid/figi_controls_1000.rds \
#                /scratch/andreeki/gwis/twostep_expectation_hybrid/${exposure}/${exposure}_snplist_twostep_chiSqG_gecco_bin${SLURM_ARRAY_TASK_ID}.rds
}

#for SLURM_ARRAY_TASK_ID in {2..10}
#do
#    wrapper 'folate_dietqc2' ${SLURM_ARRAY_TASK_ID}
#done





#wrapper 'hrt_ref_pm2'
#wrapper 'aspirin'
#wrapper 'bmi5'
#wrapper 'alcoholc_heavy_vs_moderate' 
#wrapper 'alcoholc_moderate' 
#wrapper 'asp_ref'
#wrapper 'aspirin'
#wrapper 'bmi5' 
#wrapper 'calcium_dietqc2' 
#wrapper 'calcium_totqc2' 
#wrapper 'diab' 
#wrapper 'eo_ref_pm_gxe' 
#wrapper 'ep_ref_pm_gxe' 
#wrapper 'fiberqc2' 
#wrapper 'folate_dietqc2' 
#wrapper 'folate_totqc2' 
#wrapper 'fruitqc2' 
#wrapper 'hrt_ref_pm2' 
#wrapper 'nsaids' 
#wrapper 'procmeatqc2' 
wrapper 'redmeatqc2' 
#wrapper 'smk_aveday' 
#wrapper 'smk_ever' 
#wrapper 'smk_pkyr' 
#wrapper 'vegetableqc2' 
