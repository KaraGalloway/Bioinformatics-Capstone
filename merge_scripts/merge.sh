#!/bin/bash
#SBATCH --time=72:00:00   # walltime
#SBATCH --nodes=1   # number of nodes
#SBATCH --ntasks=16   # number of processor cores (i.e. tasks)
#SBATCH --mem-per-cpu=4096M   # memory per CPU core
#SBATCH --mail-user=kgallowaylow@gmail.com   # email address
#SBATCH --mail-type=END
#SBATCH --mail-type=FAIL

module load samtools

#samtools merge PI614919_merged.ccs.bam r64068_20210715_165430/3_C01/version_01/PI614919_2/PI614919_2.ccs.bam r64068_20210715_165430/5_E01/version_01/PI614919_2/PI614919_2.ccs.bam

#samtools merge CHEN199_merged.ccs.bam r64068_20210727_090710/1_A01/version_01/CHEN199/CHEN199.ccs.bam r64068_20210727_090710/2_B01/version_01/CHEN199/CHEN199.ccs.bam

#samtools merge CHEN90_merged.ccs.bam r64068_20210727_090710/3_C01/version_01/CHEN90-2/CHEN90-2.ccs.bam r64068_20210727_090710/4_D01/version_01/CHEN90-2/CHEN90-2.ccs.bam

samtools merge JAVI_merged.ccs.bam r64068_20210803_095137/1_A01/version_01/JAVI/JAVI.ccs.bam r64068_20210803_095137/2_B01/version_01/JAVI/JAVI.ccs.bam

#samtools merge 0321072RM_merged.ccs.bam r64068_20210803_095137/3_C01/version_01/0321072RM/0321072RM.ccs.bam r64068_20210803_095137/4_D01/version_01/0321072RM/0321072RM.ccs.bam

#samtools merge Regalona_merged.ccs.bam r64068_20210803_095137/5_E01/version_01/REGALONA/REGALONA.ccs.bam r64068_20210811_123133/1_A01/version_01/REGALONA/REGALONA.ccs.bam

echo "all done"
