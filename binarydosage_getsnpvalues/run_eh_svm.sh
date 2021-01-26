#!/bin/bash

wrapper () {
    local exposure=${1}
    local wdir="/scratch/andreeki/gwis/twostep_expectation_hybrid/${exposure}/svm_subset"
    sbatch  --export=prefix="${wdir}/${exposure}_snplist_twostep_chiSqG" extract_dosages_eh_svm.sh
    sbatch  --export=prefix="${wdir}/${exposure}_snplist_twostep_chiSqGE" extract_dosages_eh_svm.sh
    sbatch  --export=prefix="${wdir}/${exposure}_snplist_twostep_chiSqEDGE" extract_dosages_eh_svm.sh
}

#wrapper aspirin
#wrapper diab
#wrapper calcium_totqc2
#wrapper calcium_dietqc2
#wrapper redmeatqc2
#wrapper procmeatqc2
wrapper asp_ref
