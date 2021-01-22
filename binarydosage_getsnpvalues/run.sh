#!/bin/bash

wrapper () {

    local exposure=${1}
    sbatch --job-name=getsnp_${exposure} --export=exposure=${exposure},prefix="/scratch/andreeki/gwis/posthoc/${exposure}/gwis_sig_results_input_${exposure}.rds" extract_dosages.sh 
    #sbatch --job-name=getsnp_${exposure} --export=exposure=${exposure},prefix="/scratch/andreeki/gwis/posthoc/${exposure}/gwis_sig_results_additional_input_${exposure}.rds" extract_dosages.sh 
}

#wrapper folate_totqc2
#wrapper alcoholc_moderate
#wrapper alcoholc_heavy_vs_moderate
#wrapper redmeatqc2
#wrapper procmeatqc2
#wrapper asp_ref
#wrapper calcium_totqc2
#wrapper hrt_ref_pm2
wrapper calcium_dietqc2
