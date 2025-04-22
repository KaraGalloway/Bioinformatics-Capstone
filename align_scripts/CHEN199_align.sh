#!/bin/bash
#SBATCH --time=72:00:00   # walltime
#SBATCH --nodes=1   # number of nodes
#SBATCH --ntasks=16   # number of processor cores (i.e. tasks)
#SBATCH --mem-per-cpu=4096M   # memory per CPU core
#SBATCH --mail-user=kgallowaylow@gmail.com   # email address
#SBATCH --mail-type=END
#SBATCH --mail-type=FAIL
module load conda-pws
module load pbmm2
pbmm2 align reference_genomes/CHEN199/CHEN199_v1.fasta CHEN199_merged.ccs.bam CHEN199_a.aligned.bam --preset HIFI
