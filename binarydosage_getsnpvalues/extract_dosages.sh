#!/bin/bash
#SBATCH --time=23:00:00
#SBATCH --ntasks=1
#SBATCH --mem=16GB
#SBATCH --account=dconti_251

module load gcc/8.3.0
module load openblas/0.3.8
module load r/3.6.3
module load unzip


# submit to slurm or just run script (if small number of SNPs) using bash

Rscript extract_dosages.R ${exposure} ${prefix}



##wrapper () {
#                local exposure=${1}
#                #Rscript extract_dosages_simple.R ${exposure} /scratch/andreeki/gwis/posthoc/${exposure}/sig_results_gwis2_input_${exposure}.rds
#                #Rscript extract_dosages_simple.R ${exposure} /scratch/andreeki/gwis/posthoc/${exposure}/gwis_sig_results_input_misc_${exposure}.rds
##                Rscript extract_dosages_simple.R ${exposure} /scratch/andreeki/gwis/posthoc/${exposure}/gwis_sig_results_input_${exposure}.rds
#                #Rscript extract_dosages_simple.R ${exposure} /scratch/andreeki/gwis/posthoc/${exposure}/gwis_sig_results_input_${exposure}_part1.rds
# 
##}


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
