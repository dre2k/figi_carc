#=============================================================================#
# Calculate Alternate Allele Frequencies
# function in BinaryDosage package
#=============================================================================#
library(BinaryDosage)

setwd("/project/dconti_250/HRC_BDose")
args <- commandArgs(trailingOnly=T)
chr <- args[1]

# Sample list (vector of vcfids)
samples <- readRDS("/scratch2/andreeki/gwis_test/data/vcfid_list_gxeset_no_ukb.rds")

# Read BinaryDosage information file (index)
figiGene <- readRDS(paste0("FIGI_snpid_fix_chr", chr, ".rds"))

out <- GetAlternateAlleleFrequencies(figiGene, 1L:nrow(figiGene$SNPs), samples)
saveRDS(out, file = paste0("/scratch2/andreeki/gwis_test/data/FIGI_v2.3_aaf_gxeset_eur_noUKB_chr", chr, ".rds"))
