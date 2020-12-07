#!/bin/bash

wrapper () {

    local exposure=${1}
    sbatch --job-name=getsnp_${exposure}_chiSqG --export=prefix="/scratch/andreeki/gwis/posthoc/${exposure}/expectation_hybrid/${exposure}_snplist_twostep_chiSqG" extract_dosages_eh.sh
    sbatch --job-name=getsnp_${exposure}_chiSqGE --export=prefix="/scratch/andreeki/gwis/posthoc/${exposure}/expectation_hybrid/${exposure}_snplist_twostep_chiSqGE" extract_dosages_eh.sh
    sbatch --job-name=getsnp_${exposure}_chiSqEDGE --export=prefix="/scratch/andreeki/gwis/posthoc/${exposure}/expectation_hybrid/${exposure}_snplist_twostep_chiSqEDGE" extract_dosages_eh.sh
    sbatch --job-name=getsnp_${exposure}_chiSqG --export=prefix="/scratch/andreeki/gwis/posthoc/${exposure}/expectation_hybrid/${exposure}_snplist_twostep_chiSqG_gecco" extract_dosages_eh.sh
}

wrapper pure_eo_all
