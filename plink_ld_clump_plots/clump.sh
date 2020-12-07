#!/bin/bash
#SBATCH --time=23:00:00
#SBATCH --ntasks=1
#SBATCH --mem=8GB
#SBATCH --account=lc_dvc
#SBATCH --partition=conti
#SBATCH --constraint=IB

wdir=/scratch/andreeki/gwis/clump_combined
cdir=/scratch/andreeki/clump
#mkdir -p ${wdir/}

#plink \
#    --bfile ${cdir}/figi_controls_1000 \
#    --memory 8000 \
#    --clump ${wdir}/FIGI_${hrc_version}_gxeset_${exposure}_chiSqCase_ldclump.txt \
#    --clump-p1 0.00000005 --clump-r2 0.15 --clump-p2 1 \
#    --out   ${wdir}/FIGI_${hrc_version}_gxeset_${exposure}_chiSqCase_ldclump

#plink \
#    --bfile ${cdir}/figi_controls_1000 \
#    --memory 8000 \
#    --clump ${wdir}/FIGI_${hrc_version}_gxeset_${exposure}_chiSq2df_ldclump.txt \
#    --clump-p1 0.00000005 --clump-r2 0.15 --clump-p2 1 \
#    --out   ${wdir}/FIGI_${hrc_version}_gxeset_${exposure}_chiSq2df_ldclump

#plink \
#    --bfile ${cdir}/figi_controls_1000 \
#    --memory 8000 \
#    --clump ${wdir}/FIGI_${hrc_version}_gxeset_${exposure}_chiSq2df_nogwas_ldclump.txt \
#    --clump-p1 0.000005 --clump-r2 0.15 --clump-p2 1 \
#    --out   ${wdir}/FIGI_${hrc_version}_gxeset_${exposure}_chiSq2df_nogwas_ldclump

#plink \
#    --bfile ${cdir}/figi_controls_1000 \
#    --memory 8000 \
#    --clump ${wdir}/FIGI_${hrc_version}_gxeset_${exposure}_chiSq3df_nogwas_no_ge_ldclump.txt \
#    --clump-p1 0.000005 --clump-r2 0.15 --clump-p2 1 \
#    --out   ${wdir}/FIGI_${hrc_version}_gxeset_${exposure}_chiSq3df_nogwas_no_ge_ldclump

#plink \
#    --bfile ${cdir}/figi_controls_1000 \
#    --memory 8000 \
#    --clump ${wdir}/FIGI_${hrc_version}_gxeset_${exposure}_chiSq3df_ldclump.txt \
#    --clump-p1 0.00000005 --clump-r2 0.15 --clump-p2 1 \
#    --out   ${wdir}/FIGI_${hrc_version}_gxeset_${exposure}_chiSq3df_ldclump


# main effects p value clump
plink \
    --bfile ${cdir}/figi_controls_1000 \
    --memory 8000 \
    --clump ${wdir}/FIGI_${hrc_version}_gxeset_${exposure}_chiSqG_ldclump.txt \
    --clump-p1 0.00000005 --clump-r2 0.15 --clump-p2 1 \
    --out   ${wdir}/FIGI_${hrc_version}_gxeset_${exposure}_chiSqG_ldclump

# E|G p value clump
plink \
    --bfile ${cdir}/figi_controls_1000 \
    --memory 8000 \
    --clump ${wdir}/FIGI_${hrc_version}_gxeset_${exposure}_chiSqControl_ldclump.txt \
    --clump-p1 0.00000005 --clump-r2 0.15 --clump-p2 1 \
    --out   ${wdir}/FIGI_${hrc_version}_gxeset_${exposure}_chiSqControl_ldclump

# GxE p value clump
# USE 5e-6!!!
plink \
    --bfile ${cdir}/figi_controls_1000 \
    --memory 8000 \
    --clump ${wdir}/FIGI_${hrc_version}_gxeset_${exposure}_chiSqGxE_ldclump.txt \
    --clump-p1 0.000005 --clump-r2 0.15 --clump-p2 1 \
    --out   ${wdir}/FIGI_${hrc_version}_gxeset_${exposure}_chiSqGxE_ldclump
