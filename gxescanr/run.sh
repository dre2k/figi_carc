#!/bin/bash

#sbatch --job-name=folate_tot_v3  --output=/scratch/andreeki/gwis/results/logs/FIGI_v3.0_gxeset_folate_totqc2_basic_covars_gxescan_chr%a.log --export=exposure=folate_totqc2 gxescanr_v3.0.sh
#sbatch --job-name=calcium_tot_v3 --output=/scratch/andreeki/gwis/results/logs/FIGI_v3.0_gxeset_calcium_totqc2_basic_covars_gxescan_chr%a.log --export=exposure=calcium_totqc2 gxescanr_v3.0.sh
#sbatch --job-name=calcium_diet_v3 --output=/scratch/andreeki/gwis/results/logs/FIGI_v3.0_gxeset_calcium_dietqc2_basic_covars_gxescan_chr%a.log --export=exposure=calcium_dietqc2 gxescanr_v3.0.sh
#sbatch --job-name=folate_diet_v3 --output=/scratch/andreeki/gwis/results/logs/FIGI_v3.0_gxeset_folate_dietqc2_basic_covars_gxescan_chr%a.log --export=exposure=folate_dietqc2 gxescanr_v3.0.sh
#sbatch --job-name=aspirin_v3 --output=/scratch/andreeki/gwis/results/logs/FIGI_v3.0_gxeset_aspirin_basic_covars_gxescan_chr%a.log --export=exposure=aspirin gxescanr_v3.0.sh
#sbatch --job-name=redmeatqcm_v2 --output=/scratch/andreeki/gwis/results/logs/FIGI_v3.0_gxeset_redmeatqcm_v2_basic_covars_gxescan_chr%a.log --export=exposure=redmeatqcm_v2,hrc_version=v3.0 gxescanr_v3.0.sh
#sbatch --job-name=procmeatqcm_v2 --output=/scratch/andreeki/gwis/results/logs/FIGI_v3.0_gxeset_procmeatqcm_v2_basic_covars_gxescan_chr%a.log --export=exposure=procmeatqcm_v2,hrc_version=v3.0 gxescanr_v3.0.sh
#sbatch --job-name=fiber10qcm --output=logs/FIGI_v3.0_gxeset_fiber10qcm_basic_covars_gxescan_chr%a.log --export=exposure=fiber10qcm,hrc_version=v3.0 gxescanr_v3.0.sh
#sbatch --job-name=folate_diet400qcm --output=logs/FIGI_v3.0_gxeset_folate_diet400qcm_basic_covars_gxescan_chr%a.log --export=exposure=folate_diet400qcm,hrc_version=v3.0 gxescanr_v3.0.sh
#sbatch --job-name=folate_sup --output=logs/FIGI_v3.0_gxeset_folate_sup_basic_covars_gxescan_chr%a.log --export=exposure=folate_sup,hrc_version=v3.0 gxescanr_v3.0.sh
#sbatch --job-name=folate_sup_yn --output=logs/FIGI_v3.0_gxeset_folate_sup_yn_basic_covars_gxescan_chr%a.log --export=exposure=folate_sup_yn,hrc_version=v3.0 gxescanr_v3.0.sh
#sbatch --job-name=folate_tot --output=logs/FIGI_v3.0_gxeset_folate_tot_basic_covars_gxescan_chr%a.log --export=exposure=folate_tot,hrc_version=v3.0 gxescanr_v3.0.sh
#sbatch --job-name=bmi_f --output=logs/FIGI_v2.3_gxeset_bmi5_female_basic_covars_gxescan_chr%a.log --export=exposure=bmi5_female,hrc_version=v2.3 gxescanr.sh
#sbatch --job-name=bmi_m --output=logs/FIGI_v2.3_gxeset_bmi5_male_basic_covars_gxescan_chr%a.log --export=exposure=bmi5_male,hrc_version=v2.3 gxescanr.sh

#sbatch --job-name=fruit5qcm --output=logs/FIGI_v3.0_gxeset_fruit5qcm_basic_covars_gxescan_chr%a.log --export=exposure=fruit5qcm,hrc_version=v3.0 gxescanr.sh
#sbatch --job-name=vegetable5qcm --output=logs/FIGI_v3.0_gxeset_vegetable5qcm_basic_covars_gxescan_chr%a.log --export=exposure=vegetable5qcm,hrc_version=v3.0 gxescanr.sh

#sbatch --job-name=methrswklns --output=logs/FIGI_v3.1_gxeset_methrswklns_basic_covars_gxescan_chr%a.log --export=exposure=methrswklns,hrc_version=v3.1 gxescanr.sh
#sbatch --job-name=methrswklnsqc2 --output=logs/FIGI_v3.1_gxeset_methrswklnsqc2_basic_covars_gxescan_chr%a.log --export=exposure=methrswklnsqc2,hrc_version=v3.1 gxescanr.sh
#sbatch --job-name=active_met_875 --output=logs/FIGI_v3.1_gxeset_active_met_875_basic_covars_gxescan_chr%a.log --export=exposure=active_met_875,hrc_version=v3.1 gxescanr.sh
sbatch --job-name=active_met_1800 --output=logs/FIGI_v3.1_gxeset_active_met_1800_basic_covars_gxescan_chr%a.log --export=exposure=active_met_1800,hrc_version=v3.1 gxescanr.sh
