#!/bin/bash

# record of some filtering steps

# remove high LD regions (from https://genome.sph.umich.edu/wiki/Regions_of_high_linkage_disequilibrium_(LD))
plink2 --bfile figi_gxe_2500samples_v2 --exclude range high_ld_remove.txt  --make-bed --out figi_gxe_2500samples_v2_nold

# filter MAF > 1%
plink2 --bfile figi_gxe_2500samples_v2_nold --maf 0.01  --make-bed --out figi_gxe_2500samples_v2_nold_maf1

# prune
# i chose 2000 SNP window, with increments of 200 and r^2 > 0.3
plink2 --bfile figi_gxe_2500samples_v2_nold_maf1 --indep-pairwise 2000 200 0.3 --make-bed --out figi_gxe_2500samples_v2_nold_maf1_prune


