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
        --input ccsmethed/CHEN90_meth.tsv.modbam.bam \
        --ref reference_genomes/CHEN90/CHEN90_v1.fasta \
        --output ccsmethed/CHEN90_meth.tsv.modbam.freq \
        --threads 10 --sort --bed
