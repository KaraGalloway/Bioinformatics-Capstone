#!/bin/bash

#SBATCH --time=72:00:00   # walltime
#SBATCH --ntasks=8   # number of processor cores (i.e. tasks)
#SBATCH --nodes=1   # number of nodes
#SBATCH --mem-per-cpu=4G   # memory per CPU core
#SBATCH -J "samtools"   # job name
#SBATCH --mail-user=kgallowaylow@gmail.com   # email address
#SBATCH --mail-type=END
#SBATCH --mail-type=FAIL
#SBATCH --qos=pws

module purge
module load samtools

samtools sort --threads 8 -o $1.sorted.bam $1
