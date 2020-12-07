#!/bin/bash

#sbatch --job-name=pure_eo --output=/scratch/andreeki/gwis/results/logs/FIGI_v2.3_gxeset_pure_eo_allNo_basic_covars_gxescan_chr%a.log --export=exposure=pure_eo_allNo gxescanr_v2.3.sh
#sbatch --job-name=pure_ep --output=/scratch/andreeki/gwis/results/logs/FIGI_v2.3_gxeset_pure_ep_allNo_basic_covars_gxescan_chr%a.log --export=exposure=pure_ep_allNo gxescanr_v2.3.sh
sbatch --job-name=pure_ep_all --output=/scratch/andreeki/gwis/results/logs/FIGI_v2.3_gxeset_pure_ep_all_basic_covars_gxescan_chr%a.log --export=exposure=pure_ep_all gxescanr_v2.3.sh

