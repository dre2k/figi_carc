library(bigmemory)
library(BinaryDosage)

args <- commandArgs(trailingOnly=T)
chr <- args[1]

bdinfo <- readRDS(paste0("/project/dconti_250/HRC_BDose/FIGI_snpid_fix_chr", chr, ".rds"))
snps_count <- nrow(bdinfo$SNPs)
snps_index <- seq(1, snps_count)
samples_count <- nrow(bdinfo$Samples)
snps_list <- split(snps_index, ceiling(seq_along(snps_index)/1000)) # write dosages 1000 at a time because of memory issues

bigmem_file <- bigmemory::filebacked.big.matrix(
    nrow = samples_count,
    ncol = snps_count,
    type = "double",
    backingfile = paste0("FIGI_chr", chr, ".bk"),
    descriptorfile = paste0("FIGI_chr", chr, ".desc"),
    backingpath = "/project/dconti_250/HRC_bigmatrix")

snps_list_length <- length(snps_list)
for (pos in 1:snps_list_length) {
	aa <- head(snps_list[[pos]], n = 1)
	zz <- tail(snps_list[[pos]], n = 1)
  	bigmem_file[, aa:zz] <- GetSNPValues(bdinfo, snps_list[[pos]], geneProb = F)
}
