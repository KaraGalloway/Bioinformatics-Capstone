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
        --ref reference_genomes/CHEN199/CHEN199_v1.fasta \
        --input aligned/CHEN199_a.aligned.bam.sorted.bam \
        --output ccsmethed/CHEN199_meth.tsv \
        --model_file model_ccsmeth_5mCpG_call_mods_attbigru2s_b21.v3.ckpt
