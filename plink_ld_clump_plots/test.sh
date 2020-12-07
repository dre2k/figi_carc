#!/bin/bash
#SBATCH --time=23:00:00
#SBATCH --ntasks=1
#SBATCH --mem=8GB
#SBATCH --account=lc_dvc
#SBATCH --partition=conti
#SBATCH --constraint=IB

wdir=/scratch/andreeki/gwis/clump_combined
exposure=pure_ep_allNo
hrc_version=v2.3
#mkdir -p ${out_dir}

# main effects p value clump
#plink \
#    --bfile ${wdir}/figi_controls_1000 \
#    --memory 8000 \
#    --clump ${wdir}/figi_gxescan_${exposure}_chiSqG_ldclump.txt \
#    --clump-p1 0.0001 --clump-r2 0.2 --clump-p2 1 \
#    --out   ${wdir}/figi_gxescan_${exposure}_chiSqG_ldclump

# E|G p value clump
#plink \
#    --bfile /scratch/andreeki/clump/figi_controls_1000 \
#    --memory 8000 \
#    --clump ${wdir}/figi_gxescan_${exposure}_chiSqControl_ldclump.txt \
#    --clump-p1 0.0001 --clump-r2 0.2 --clump-p2 1 \
#    --out   ${wdir}/figi_gxescan_${exposure}_chiSqControl_ldclump


plink \
    --bfile /scratch/andreeki/clump/figi_controls_1000 \
    --memory 8000 \
    --clump ${wdir}/FIGI_${hrc_version}_gxeset_${exposure}_chiSq2df_no_gwas_ldclump.txt \
    --clump-p1 0.00000005 --clump-r2 0.15 --clump-p2 1 \
    --out   ${wdir}/FIGI_${hrc_version}_gxeset_${exposure}_chiSq2df_no_gwas_ldclump

plink \
    --bfile /scratch/andreeki/clump/figi_controls_1000 \
    --memory 8000 \
    --clump ${wdir}/FIGI_${hrc_version}_gxeset_${exposure}_chiSq3df_no_gwas_no_ge_ldclump.txt \
    --clump-p1 0.00000005 --clump-r2 0.15 --clump-p2 1 \
    --out   ${wdir}/FIGI_${hrc_version}_gxeset_${exposure}_chiSq3df_no_gwas_no_ge_ldclump
