#!/bin/bash
#SBATCH --time=20:00:00
#SBATCH --ntasks=1
#SBATCH --mem=16GB
#SBATCH --account=dconti_251
#SBATCH --partition=conti
#SBATCH --array=1-7

module load gcc/8.3.0
module load openblas/0.3.8
module load r/3.6.3

#Rscript extract_dosages_eh.R \
#/scratch/andreeki/gwis/twostep_expectation_hybrid/figi_controls_1000.rds \
#${prefix}_bin${SLURM_ARRAY_TASK_ID}.rds


Rscript extract_dosages_eh.R \
/project/dconti_250/gwis_test/data/figi_controls_1000.rds \
${prefix}_bin${SLURM_ARRAY_TASK_ID}.rds


#=============================================================================#
# OLD STUFF #
#=============================================================================#
#wrapper_func_annot () {
#                local exposure=${1}
#                local score=${2}
#                Rscript extract_dosages_hybrid_twostep.R \
#                /scratch/andreeki/gwis/figi_controls_1000.rds \
#                /scratch/andreeki/gwis/posthoc/${exposure}/expectation_hybrid/${exposure}_snplist_twostep_func_annot_subset_${score}_chiSqG_bin${SLURM_ARRAY_TASK_ID}.rds
#
#                Rscript extract_dosages_hybrid_twostep.R \
#                /scratch/andreeki/gwis/figi_controls_1000.rds \
#                /scratch/andreeki/gwis/posthoc/${exposure}/expectation_hybrid/${exposure}_snplist_twostep_func_annot_subset_${score}_chiSqGE_bin${SLURM_ARRAY_TASK_ID}.rds
#
#                Rscript extract_dosages_hybrid_twostep.R \
#                /scratch/andreeki/gwis/figi_controls_1000.rds \
#                /scratch/andreeki/gwis/posthoc/${exposure}/expectation_hybrid/${exposure}_snplist_twostep_func_annot_subset_${score}_chiSqEDGE_bin${SLURM_ARRAY_TASK_ID}.rds
#}

#wrapper_func_annot 'alcoholc_moderate' 'pooled'
#wrapper_func_annot 'alcoholc_moderate' 'tumor'
#wrapper_func_annot 'alcoholc_moderate' 'control'
#wrapper_func_annot 'alcoholc_heavy_vs_moderate' 'pooled'
#wrapper_func_annot 'alcoholc_heavy_vs_moderate' 'tumor'
#wrapper_func_annot 'alcoholc_heavy_vs_moderate' 'control'
