#!/bin/bash

clumpit () {
    
    local exposure=${1}
    #sbatch --job-name=ld_${exposure} --output=/scratch/andreeki/gwis/clump_combined/logs/FIGI_v2.4_${exposure}_nogwas_ldclump.log --export=exposure=${exposure},hrc_version='v2.4'  clump.sh
    #sbatch --job-name=ld_${exposure} --output=/scratch/andreeki/gwis/clump_combined/logs/FIGI_v3.0_${exposure}_ldclump.log --export=exposure=${exposure},hrc_version='v3.0'  clump.sh
    sbatch --job-name=ld_${exposure} --output=/scratch/andreeki/gwis/clump_combined/logs/FIGI_v2.3_${exposure}_ldclump.log --export=exposure=${exposure},hrc_version='v2.3'  clump.sh
}


#clumpit "nsaids"
#clumpit "height10"
#clumpit "p_diet_std"
#clumpit "bmi5"
#clumpit "alcoholc_moderate"
#clumpit "alcoholc_heavy_vs_moderate"

#clumpit "height10"
#clumpit "height10_cohort"
#clumpit "height10_casecontrol"
#clumpit "giant"



#clumpit aspirin
#clumpit asp_ref
#clumpit diab
#clumpit calcium_totqc2
#clumpit calcium_dietqc2
#clumpit folate_totqc2
#clumpit folate_dietqc2
#clumpit redmeatqc2
#clumpit procmeatqc2
#clumpit fiberqc2
#clumpit fruitqc2
#clumpit vegetableqc2
#clumpit smk_ever
#clumpit smk_aveday
#clumpit smk_pkyr
#clumpit hrt_ref_pm2
#clumpit pure_eo_allNo
clumpit pure_ep_allNo
#clumpit eo_ref_pm_gxe
#clumpit ep_ref_pm_gxe
