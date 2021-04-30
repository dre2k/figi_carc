#!/bin/bash

wrapper () {

    local exposure=${1}
    local wdir="/scratch/andreeki/gwis/twostep_expectation_hybrid/${exposure}"
    sbatch --job-name=chiSqG_${exposure}   --export=prefix="${wdir}/${exposure}_snplist_twostep_chiSqG"  extract_dosages_eh.sh
    sbatch --job-name=chiSqGE_${exposure}   --export=prefix="${wdir}/${exposure}_snplist_twostep_chiSqGE" extract_dosages_eh.sh
    sbatch --job-name=chiSqEDGE_${exposure} --export=prefix="${wdir}/${exposure}_snplist_twostep_chiSqEDGE" extract_dosages_eh.sh
    sbatch --job-name=gecco_${exposure}     --export=prefix="${wdir}/${exposure}_snplist_twostep_chiSqG_gecco" extract_dosages_eh.sh
}

wrapper vitd25
