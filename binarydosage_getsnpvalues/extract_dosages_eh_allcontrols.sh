#!/bin/bash
#SBATCH --time=100:00:00
#SBATCH --ntasks=1
#SBATCH --mem=16GB
#SBATCH --account=lc_dvc
#SBATCH --partition=conti
#SBATCH --array=1-5

# submit to slurm or just run script (if small number of SNPs) using bash


wrapper () {
                local exposure=${1}
                Rscript extract_dosages_hybrid_twostep.R \
                /scratch/andreeki/gwis/twostep_expectation_hybrid/figi_controls_${exposure}.rds \
                /scratch/andreeki/gwis/twostep_expectation_hybrid/${exposure}/${exposure}_snplist_twostep_chiSqG_bin${SLURM_ARRAY_TASK_ID}.rds
#
#                Rscript extract_dosages_hybrid_twostep.R \
#                /scratch/andreeki/gwis/twostep_expectation_hybrid/figi_controls_1000.rds \
#                /scratch/andreeki/gwis/twostep_expectation_hybrid/${exposure}/${exposure}_snplist_twostep_chiSqGE_bin${SLURM_ARRAY_TASK_ID}.rds
#
#                Rscript extract_dosages_hybrid_twostep.R \
#                /scratch/andreeki/gwis/twostep_expectation_hybrid/figi_controls_1000.rds \
#                /scratch/andreeki/gwis/twostep_expectation_hybrid/${exposure}/${exposure}_snplist_twostep_chiSqEDGE_bin${SLURM_ARRAY_TASK_ID}.rds
#
#                Rscript extract_dosages_hybrid_twostep.R \
#                /scratch/andreeki/gwis/twostep_expectation_hybrid/figi_controls_1000.rds \
#                /scratch/andreeki/gwis/twostep_expectation_hybrid/${exposure}/${exposure}_snplist_twostep_chiSqG_gecco_bin${SLURM_ARRAY_TASK_ID}.rds
}

#wrapper 'hrt_ref_pm2'
#wrapper 'aspirin'
wrapper 'bmi5'
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
#wrapper 'redmeatqc2' 
#wrapper 'smk_aveday' 
#wrapper 'smk_ever' 
#wrapper 'smk_pkyr' 
#wrapper 'vegetableqc2' 
