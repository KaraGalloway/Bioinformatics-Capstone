#!/bin/bash
#SBATCH --time=72:00:00   # walltime
#SBATCH --nodes=1   # number of nodes
#SBATCH --ntasks=16   # number of processor cores (i.e. tasks)
#SBATCH --mem-per-cpu=4096M   # memory per CPU core
#SBATCH --mail-user=kgallowaylow@gmail.com   # email address
#SBATCH --mail-type=END
#SBATCH --mail-type=FAIL

module load conda-pws
module load ccsmeth

ccsmeth call_mods \
	--input output/COLO829_GRCh38_aligned.bam\
	--ref reference/Homo_sapiens.GRCh38.dna.primary_assembly.fasta\
	--model_file ../model_ccsmeth_5mCpG_call_mods_attbigru2s_b21.v3.ckpt\
	--output output/COLO829_GRCh38_aligned.call_mods.bam\
	--threads 10\
	--mode align
