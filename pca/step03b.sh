#!/bin/bash
#SBATCH --time=20:00:00
#SBATCH --ntasks=1
#SBATCH --mem=8GB
#SBATCH --account=dconti_251
#SBATCH --partition=conti
#SBATCH --output=./logs/step03b_filter_again.log

module load gcc/8.3.0
module load openblas/0.3.8
module load r/3.6.3

for filename in axiom_acs_aus_nf axiom_mecc_cfr_ky ccfr_1m_1mduo_reimpute corect_oncoarray corsa_axiom cytosnp_comb dachs3 initial_comb_datasets mecc omni_comb omniexpress_exomechip oncoarray_to_usc plco_3 reach UKB1 UKB2
do
        #echo ${filename}
        #grep 114920400 ./${filename}/${filename}_chr10_step01.bim
	plink --bfile ./${filename}/${filename} --exclude figi_gxe_2500samples-merge.missnp --make-bed --out ./${filename}/${filename}_v2
done
