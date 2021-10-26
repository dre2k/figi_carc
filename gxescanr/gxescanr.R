#=============================================================================#
# GxEScanR
# 
# ------ Notes: ------ #
# - Analyses filtered for MAF < 1%
#=============================================================================#
library(GxEScanR)
library(glue)

args <- commandArgs(trailingOnly=T)
chr <- args[1]
exposure <- args[2]
hrc_version <- args[3]

bd_dir <- "/project/dconti_250/HRC_BDose/"
cov_dir <- glue("/project/dconti_250/gwis_test/{exposure}/data/")
out_dir <- glue("/project/dconti_250/gwis_test/{exposure}/results/")

covariate_file <- glue("{cov_dir}/FIGI_{hrc_version}_gxeset_{exposure}_basic_covars_gxescan.rds")
outFile        <- glue("{out_dir}/FIGI_{hrc_version}_gxeset_{exposure}_basic_covars_gxescan_chr{chr}.out")
outFile_skip   <- glue("{out_dir}/FIGI_{hrc_version}_gxeset_{exposure}_basic_covars_gxescan_skipped_chr{chr}.out")


#-----------------------------------------------------------------------------#
# set directory
setwd(bd_dir)
bdose_file <- paste0("FIGI_snpid_fix_chr", chr, ".rds")

# Read in the covariate info
figiCov <- readRDS(covariate_file)

# Read in the information of the binary dosage file
figiGene <- readRDS(bdose_file)
class(figiGene) <- "genetic-file-info" # (temporary, john will fix)

# Fit the models
Sys.time()
GxEScan(figiCov, figiGene, outFile=outFile, skipFile=outFile_skip, popminMaf=0, sampleminMaf=0.01, binCov=F)
Sys.time()
