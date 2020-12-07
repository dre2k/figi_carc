#!/bin/bash

#sbatch --job-name=clump_bychr --output=/scratch/andreeki/gwis/clump_bychr/logs/plink_height10_cohort_ldclump_chiSqG_chr%a.log --export=exposure=height10_cohort plink_ld_clump.sh
sbatch --job-name=clump_bychr --output=/scratch/andreeki/gwis/clump_bychr/logs/plink_height10_casecontrol_ldclump_chiSqG_chr%a.log --export=exposure=height10_casecontrol plink_ld_clump.sh

# ---- p_diet_std ---- #
#sbatch --job-name=ld_p_diet_std --output=/staging/dvc/andreeki/gwis/clump_bychr/logs/plink_p_diet_std_ldclump_chiSqG_chr%a.log --export=exposure=p_diet_std plink_ld_clump.sh


# ---- NSAIDs ---- #
#sbatch --job-name=ld_asp_ref --output=/staging/dvc/andreeki/clump_results/logs/plink_asp_ref_ldclump_chiSqG_chr%a.log --export=exposure=asp_ref plink_ld_clump.sh
##sbatch --job-name=ld_nsaids --output=/staging/dvc/andreeki/clump_results/logs/plink_nsaids_ldclump_chr%a.log --export=exposure=nsaids plink_ld_clump.sh
#sbatch --job-name=ld_aspirin --output=/staging/dvc/andreeki/clump_results/logs/plink_aspirin_ldclump_chiSqG_chr%a.log --export=exposure=aspirin plink_ld_clump.sh

# ---- alcoholc ---- #
#@sbatch --job-name=clump_alc_h_vs_m --output=/staging/dvc/andreeki/gwis/clump_bychr/logs/plink_alcoholc_heavy_vs_moderate_ldclump_chr%a.log --export=exposure=alcoholc_heavy_vs_moderate plink_ld_clump.sh
#sbatch --job-name=clump_alc_m --output=/staging/dvc/andreeki/clump_results/logs/plink_alcoholc_moderate_ldclump_chr%a.log --export=exposure=alcoholc_moderate plink_ld_clump.sh

# ---- dietary ----#
#sbatch --job-name=clump_red --output=/staging/dvc/andreeki/clump_results/logs/plink_redmeatqc2_ldclump_chr%a.log --export=exposure=redmeatqc2 plink_ld_clump.sh
#sbatch --job-name=clump_proc --output=/staging/dvc/andreeki/clump_results/logs/plink_procmeatqc2_ldclump_chr%a.log --export=exposure=procmeatqc2 plink_ld_clump.sh
#sbatch --job-name=clump_fiber --output=/staging/dvc/andreeki/clump_results/logs/plink_fiberqc2_ldclump_chr%a.log --export=exposure=fiberqc2 plink_ld_clump.sh
#sbatch --job-name=clump_fruit --output=/staging/dvc/andreeki/clump_results/logs/plink_fruitqc2_ldclump_chr%a.log --export=exposure=fruitqc2 plink_ld_clump.sh
#sbatch --job-name=clump_veg --output=/staging/dvc/andreeki/clump_results/logs/plink_vegetableqc2_ldclump_chr%a.log --export=exposure=vegetableqc2 plink_ld_clump.sh

# ---- bmi5 ---- #
#sbatch --job-name=clump_bmi5 --output=/staging/dvc/andreeki/clump_results/logs/plink_bmi5_ldclump_chr%a.log --export=exposure=bmi5 plink_ld_clump.sh

# ---- diab ---- #
#sbatch --job-name=clump_diab --output=/staging/dvc/andreeki/clump_results/logs/plink_diab_ldclump_chr%a.log --export=exposure=diab plink_ld_clump.sh

# ---- hrt ---- #
#sbatch --job-name=clump_hrt --output=/staging/dvc/andreeki/clump_results/logs/plink_hrt_ref_pm2_ldclump_chr%a.log --export=exposure=hrt_ref_pm2 plink_ld_clump.sh
#sbatch --job-name=clump_eo --output=/staging/dvc/andreeki/clump_results/logs/plink_eo_ref_pm_gxe_ldclump_chr%a.log --export=exposure=eo_ref_pm_gxe  plink_ld_clump.sh
#sbatch --job-name=clump_ep --output=/staging/dvc/andreeki/clump_results/logs/plink_ep_ref_pm_gxe_ldclump_chr%a.log --export=exposure=ep_ref_pm_gxe plink_ld_clump.sh

# ---- folate ---- #
#sbatch --job-name=clump_fol_tot --output=/staging/dvc/andreeki/clump_results/logs/plink_folate_totqc2_ldclump_chr%a.log --export=exposure=folate_totqc2 plink_ld_clump.sh
#sbatch --job-name=clump_fol_diet --output=/staging/dvc/andreeki/clump_results/logs/plink_folate_dietqc2_ldclump_chr%a.log --export=exposure=folate_dietqc2 plink_ld_clump.sh

# ---- calcium ---- #
#sbatch --job-name=clump_catot --output=/staging/dvc/andreeki/clump_results/logs/plink_calcium_totqc2_ldclump_chr%a.log --export=exposure=calcium_totqc2 plink_ld_clump.sh
#sbatch --job-name=clump_cadiet --output=/staging/dvc/andreeki/clump_results/logs/plink_calcium_dietqc2_ldclump_chr%a.log --export=exposure=calcium_dietqc2 plink_ld_clump.sh

# ---- smoke ---- #
#sbatch --job-name=clump_smk_aveday --output=/staging/dvc/andreeki/clump_results/logs/plink_smk_aveday_ldclump_chr%a.log --export=exposure=smk_aveday plink_ld_clump.sh
#sbatch --job-name=clump_smk_ever --output=/staging/dvc/andreeki/clump_results/logs/plink_smk_ever_ldclump_chr%a.log --export=exposure=smk_ever plink_ld_clump.sh
#sbatch --job-name=clump_smk_pkyr --output=/staging/dvc/andreeki/clump_results/logs/plink_smk_pkyr_ldclump_chr%a.log --export=exposure=smk_pkyr plink_ld_clump.sh

# ---- height ---- 
#sbatch --job-name=clump_ht --output=/staging/dvc/andreeki/clump_results/logs/plink_height10_ldclump_chr%a.log --export=exposure=height10 plink_ld_clump.sh 
