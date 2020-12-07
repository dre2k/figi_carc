#=============================================================================#
# GxEScanR
# 
# ------ Notes: ------ #
# - Analyses filtered for MAF < 1%
#=============================================================================#
library(GxEScanR)
args <- commandArgs(trailingOnly=T)
chr <- args[1]
exposure <- args[2]

filename_suffix <- '_basic_covars_bmi5_height10_gxescan'
filename_suffix <- '_basic_covars_gxescan'
bdose_directory <- "/auto/pmd-02/figi/HRC_BDose/"
cov_directory <- "/staging/dvc/andreeki/gwis/results/"

covariate_file <- paste0(cov_directory, "input/FIGI_v2.4_gxeset_", exposure, filename_suffix, ".rds")
bdose_file <- paste0("FIGI_snpid_fix_chr", chr, ".rds") 
outFile <-      paste0(cov_directory, exposure, "/FIGI_v2.4_gxeset_", exposure, filename_suffix,"_chr", chr, ".out")
outFile_skip <- paste0(cov_directory, exposure, "/FIGI_v2.4_gxeset_", exposure, filename_suffix,"skipped_chr", chr, ".out")


#-----------------------------------------------------------------------------#
# set directory
setwd(bdose_directory)

# Read in the covariate info
figiCov <- readRDS(covariate_file)

# Read in the information of the binary dosage file
figiGene <- readRDS(bdose_file)
class(figiGene) <- "genetic-file-info" # (temporary, john will fix)

# Fit the models
Sys.time()
#GxEScan(figiCov, figiGene, outFile=outFile, skipFile=outFile_skip, popminMaf=0.01, sampleminMaf=0.01, binCov=F, snps = 2678934:numSNPs)
#GxEScan(figiCov, figiGene, outFile=outFile, skipFile=outFile_skip, popminMaf=0.01, sampleminMaf=0.01, binCov=F)
GxEScan(figiCov, figiGene, outFile=outFile, skipFile=outFile_skip, popminMaf=0, sampleminMaf=0.01, binCov=F)
Sys.time()
