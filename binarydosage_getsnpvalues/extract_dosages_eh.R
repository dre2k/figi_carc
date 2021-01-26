#=============================================================================#
# FIGI - Extract Dosages from BinaryDosage files
# 02/04/2020
# Updated: 3/17/2020
#
# Since I'm using a different info file with unique SNP names, maybe
# I can extract dosages using chr:bp:ref:alt names directly 
# to simplify one-off type tasks
#
# keep number of SNPs to reasonable level (< 20) 
#
# updated to extract dosages for hybrid expectation based two-step methods
#=============================================================================#
library(BinaryDosage)

# arguments
args <- commandArgs(trailingOnly=T)
tmp1 <- args[1]
tmp2 <- args[2]

# read in vectors of control vcfids and snp ids
controls <- readRDS(tmp1)
snps <- readRDS(tmp2)
snps <- unique(snps)


# organize SNPs into a list of vectors, split by chromosome
tmp3 <- sapply(snps, function(x) strsplit(x, split = ":"))
tmp4 <- as.numeric(sapply(tmp3, function(x) x[1]))
snps_list <- split(snps, tmp4)

# function to extract dosages by chromosome
GetSNPValues_wrapper <- function(vector_of_snps) {
  chr <- strsplit(vector_of_snps[1], split = ":")[[1]][1] # get chromosome number
  #bdose <- readRDS(paste0("/auto/pmd-02/figi/HRC_BDose/FIGI_snpid_fix_chr", chr, ".rds"))
  bdose <- readRDS(paste0("/project/dconti_250/HRC_BDose/FIGI_snpid_fix_chr", chr, ".rds"))
  dosages <- GetSNPValues(bdose, SNPs = vector_of_snps, Subjects = controls, geneProb = F)
  out <- data.frame(dosages)
  out$vcfid <- rownames(out)
  return(out)
}

out <- lapply(snps_list, GetSNPValues_wrapper)

out <- unname(out)

quick_wrap <- function(x,y) {
  merge(x, y, by="vcfid")
}

out <- Reduce(quick_wrap, out)
saveRDS(out, file = paste0(gsub(".rds", "", tmp2), "_output.rds"))

