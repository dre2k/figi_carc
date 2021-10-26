#!/bin/bash

wrapper () {

    local exposure=${1}
    local hrc_version=${2}
    local wdir="/project/dconti_250/gwis_test/${exposure}/data/expectation_bin_dosages"
    sbatch --job-name=chiSqG_${exposure}    --export=prefix="${wdir}/expectation_based_snplist_${exposure}_${hrc_version}_chiSqG"  extract_dosages_eh.sh
    sbatch --job-name=chiSqGE_${exposure}   --export=prefix="${wdir}/expectation_based_snplist_${exposure}_${hrc_version}_chiSqGE" extract_dosages_eh.sh
    sbatch --job-name=chiSqEDGE_${exposure} --export=prefix="${wdir}/expectation_based_snplist_${exposure}_${hrc_version}_chiSqEDGE" extract_dosages_eh.sh
    sbatch --job-name=gecco_${exposure}     --export=prefix="${wdir}/expectation_based_snplist_${exposure}_${hrc_version}_chiSqG_gecco" extract_dosages_eh.sh
}

#wrapper () {
#
#    local exposure=${1}
#    local hrc_version=${2}
#    local wdir="/project/dconti_250/gwis_test/${exposure}_v23/data/expectation_bin_dosages"
#    sbatch --job-name=chiSqG_${exposure}    --export=prefix="${wdir}/expectation_based_snplist_${exposure}_${hrc_version}_chiSqG"  extract_dosages_eh.sh
#    sbatch --job-name=chiSqGE_${exposure}   --export=prefix="${wdir}/expectation_based_snplist_${exposure}_${hrc_version}_chiSqGE" extract_dosages_eh.sh
#    sbatch --job-name=chiSqEDGE_${exposure} --export=prefix="${wdir}/expectation_based_snplist_${exposure}_${hrc_version}_chiSqEDGE" extract_dosages_eh.sh
#    sbatch --job-name=gecco_${exposure}     --export=prefix="${wdir}/expectation_based_snplist_${exposure}_${hrc_version}_chiSqG_gecco" extract_dosages_eh.sh
#}

#wrapper redmeatqcm_v2 v3.0
#wrapper fiber10qcm v3.0
#wrapper fruit5qcm v3.0
#wrapper vegetable5qcm v3.0
#wrapper folate_dietqc2 v2.3
#wrapper folate_diet400qcm v3.0
#wrapper folate_sup_yn v3.0
#wrapper folate_tot v3.0
#wrapper bmi5_female v2.3
#wrapper bmi5_male v2.3
wrapper alcoholc_heavy_vs_moderate v2.3
