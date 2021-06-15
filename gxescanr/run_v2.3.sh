#!/bin/bash

#sbatch --job-name=pure_eo --output=/scratch/andreeki/gwis/results/logs/FIGI_v2.3_gxeset_pure_eo_allNo_basic_covars_gxescan_chr%a.log --export=exposure=pure_eo_allNo gxescanr_v2.3.sh
#sbatch --job-name=pure_ep --output=/scratch/andreeki/gwis/results/logs/FIGI_v2.3_gxeset_pure_ep_allNo_basic_covars_gxescan_chr%a.log --export=exposure=pure_ep_allNo gxescanr_v2.3.sh
#sbatch --job-name=pure_ep_all --output=/scratch/andreeki/gwis/results/logs/FIGI_v2.3_gxeset_pure_ep_all_basic_covars_gxescan_chr%a.log --export=exposure=pure_ep_all gxescanr_v2.3.sh
#sbatch --job-name=vitd25 --output=/scratch/andreeki/gwis/results/logs/FIGI_v2.3_gxeset_vitd25_basic_covars_gxescan_chr%a.log --export=exposure=vitd25 gxescanr_v2.3.sh
#sbatch --job-name=smk_ever --output=/scratch/andreeki/gwis/results/logs/FIGI_v2.3_gxeset_smk_ever_basic_covars_gxescan_chr%a.log --export=exposure=smk_ever gxescanr_v2.3.sh
#sbatch --job-name=smk_pkyr --output=/scratch/andreeki/gwis/results/logs/FIGI_v2.3_gxeset_smk_pkyr_basic_covars_gxescan_chr%a.log --export=exposure=smk_pkyr gxescanr_v2.3.sh
#sbatch --job-name=smk_aveday --output=/scratch/andreeki/gwis/results/logs/FIGI_v2.3_gxeset_smk_aveday_basic_covars_gxescan_chr%a.log --export=exposure=smk_aveday gxescanr_v2.3.sh
#sbatch --job-name=redmeatqcm --output=/scratch/andreeki/gwis/results/logs/FIGI_v2.3_gxeset_redmeatqcm_basic_covars_gxescan_chr%a.log --export=exposure=redmeatqcm gxescanr_v2.3.sh
#sbatch --job-name=procmeatqcm --output=/scratch/andreeki/gwis/results/logs/FIGI_v2.3_gxeset_procmeatqcm_basic_covars_gxescan_chr%a.log --export=exposure=procmeatqcm gxescanr_v2.3.sh
#sbatch --job-name=polyE --output=/scratch/andreeki/gwis/results/logs/FIGI_v2.3_gxeset_comp6_basic_covars_gxescan_chr%a.log --export=exposure=comp6 gxescanr_v2.3.sh
sbatch --job-name=polyE --output=/scratch/andreeki/gwis/results/logs/FIGI_v2.3_gxeset_comp2_basic_covars_gxescan_chr%a.log --export=exposure=comp2 gxescanr_v2.3.sh

