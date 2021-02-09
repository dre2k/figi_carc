library(bigmemory)
library(BinaryDosage)

args <- commandArgs(trailingOnly=T)
chr <- args[1]

snps <- read.csv(paste0("/scratch/andreeki/eric/snpSet_", chr, ".csv"), stringsAsFactors = F)
snps_vector <- snps[[2]]
snps_vector_list <- split(snps_vector, ceiling(seq_along(snps_vector)/1000))

snps_index <- seq(1, length(snps_vector))
snps_index_list <- split(snps_index, ceiling(seq_along(snps_index)/1000))

bdinfo <- readRDS(paste0("/project/dconti_250/HRC_BDose/FIGI_snpid_fix_chr", chr, ".rds"))

wtf <- bigmemory::filebacked.big.matrix(
    nrow = nrow(bdinfo$Samples),
    ncol = length(snps_vector),
    type = "double",
    backingfile = paste0("dosages_chr", chr, ".bk"),
    descriptorfile = paste0("dosages_chr", chr, ".desc"),
    backingpath = "/project/dconti_250/BarcUVA_imputation/dosages")

elements <- length(snps_index_list)
for (pos in 1:elements) {
	aa <- head(snps_index_list[[pos]], n = 1)
	zz <- tail(snps_index_list[[pos]], n = 1)
  	wtf[, aa:zz] <- GetSNPValues(bdinfo, snps_vector_list[[pos]], geneProb =F)
}
