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

ccsmeth call_freqb \
	--input_bam output/COLO829_GRCh38_aligned.call_mods.bam.modbam.bam\
	--ref reference/Homo_sapiens.GRCh38.dna.primary_assembly.fasta\
	--output COLO829_GRCh38_aligned.call_mods.bam.modbam.freq\
	--threads 10 --sort --bed
