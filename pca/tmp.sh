#!/bin/bash

# this was for troubleshooting additional multiallelic sites
for filename in axiom_acs_aus_nf axiom_mecc_cfr_ky ccfr_1m_1mduo_reimpute corect_oncoarray corsa_axiom cytosnp_comb dachs3 initial_comb_datasets mecc omni_comb omniexpress_exomechip oncoarray_to_usc plco_3 reach UKB1 UKB2
do
	echo ${filename}
	grep 114920400 ./${filename}/${filename}_chr10_step01.bim
done
