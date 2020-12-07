#!/bin/bash
exposure="asp_ref"
exposure="aspirin"
exposure="p_diet_std"
exposure="nsaids"

#sbatch --job-name=gxescan_${exposure} --output=/staging/dvc/andreeki/gwis/logs/FIGI_v2.4_gxeset_${exposure}_basic_covars_gxescan.log --export=exposure=${exposure} gxescan.sh 
#sbatch --job-name=gxescan_${exposure} --output=/staging/dvc/andreeki/gwis/results/logs/FIGI_v2.4_gxeset_${exposure}_basic_covars_bmi5_height10_gxescan.log --export=exposure=${exposure} gxescan.sh 
sbatch --job-name=gxescan_${exposure} --output=/staging/dvc/andreeki/gwis/results/logs/FIGI_v2.4_gxeset_${exposure}_basic_covars_gxescan.log --export=exposure=${exposure} gxescan.sh 
