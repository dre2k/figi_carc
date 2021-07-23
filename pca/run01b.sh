#!/bin/bash
run_function () {

	local batch=${1}
	mkdir -p ./${batch}
	sbatch --output=./logs/step01b_${batch}_chr%a.log --export=batch=${batch} step01b.sh
}

#run_function "axiom_acs_aus_nf"
#run_function "axiom_mecc_cfr_ky"
#run_function "mecc"
#run_function "ccfr_1m_1mduo_reimpute"
#run_function "ccfr_omni"
#run_function "UKB1"
#run_function "UKB2"

run_function "corect_oncoarray"
#run_function "corsa_axiom"
#run_function "cytosnp_comb"
#run_function "dachs3"
#run_function "initial_comb_datasets"
#run_function "newfoundland_omniquad"
#run_function "omni_comb"
#run_function "omniexpress_exomechip"
#run_function "oncoarray_to_usc"
#run_function "plco_3"
#run_function "reach"

