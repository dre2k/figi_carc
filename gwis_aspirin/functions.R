# ===================================================================== #
# testing targets workflow
# this might make it more manageable to create all those results again
# ===================================================================== #

# functions 

process_gxe_output <- function(exposure, path, hrc_version) {

	out <- do.call(rbind, lapply(list.files(path = glue("{path}/{exposure}"), full.names = T, pattern = glue("FIGI_{hrc_version}_gxeset_{exposure}_basic_covars_gxescan_chr")), fread, stringsAsFactors = F, data.table = F)) %>%
		mutate(SNP2 = paste0(Chromosome, ":", Location), 
				chiSqEDGE = chiSqG + chiSqGE,
				chiSq3df = chiSqG + chiSqGxE + chiSqGE, 
				chiSqEDGE_p = pchisq(chiSqEDGE, df = 2, lower.tail = F),
				chiSqG_p = pchisq(chiSqG, df = 1, lower.tail = F), 
				chiSqGxE_p = pchisq(chiSqGxE, df = 1, lower.tail = F), 
				chiSq2df_p = pchisq(chiSq2df, df = 2, lower.tail = F), 
				chiSq3df_p = pchisq(chiSq3df, df = 3, lower.tail = F), 
				chiSqGE_p = pchisq(chiSqGE, df = 1, lower.tail = F), 
				chiSqCase_p = pchisq(chiSqCase, df = 1, lower.tail = F), 
				chiSqControl_p = pchisq(chiSqControl, df = 1, lower.tail = F))

	dir.create(file.path(glue("{path}/processed")))
	


}
