#!/bin/bash

wrapper () {

    local exposure=${1}
    local hrc_version=${2}
    local wdir="/scratch2/andreeki/gwis_test/${exposure}/data/expectation_bin_dosages"
    sbatch --job-name=chiSqG_${exposure}    --export=prefix="${wdir}/expectation_based_snplist_${exposure}_${hrc_version}_chiSqG"  extract_dosages_eh.sh
    sbatch --job-name=chiSqGE_${exposure}   --export=prefix="${wdir}/expectation_based_snplist_${exposure}_${hrc_version}_chiSqGE" extract_dosages_eh.sh
    sbatch --job-name=chiSqEDGE_${exposure} --export=prefix="${wdir}/expectation_based_snplist_${exposure}_${hrc_version}_chiSqEDGE" extract_dosages_eh.sh
    sbatch --job-name=gecco_${exposure}     --export=prefix="${wdir}/expectation_based_snplist_${exposure}_${hrc_version}_chiSqG_gecco" extract_dosages_eh.sh
}

wrapper redmeatqcm_v2 v3.0
