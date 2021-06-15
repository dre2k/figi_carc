library(tidyverse)
library(glue)
library(data.table)
library(qs)

x <- readRDS("/scratch2/andreeki/gwis_test/data/FIGI_v2.3_GWAS.rds")
x_noukb <- dplyr::filter(x, study_gxe != "UKB_1", gxe == 1, EUR_subset == 1) %>%
	dplyr::pull(vcfid)
saveRDS(x_noukb, file = "vcfid_list_gxeset_no_ukb.rds")
