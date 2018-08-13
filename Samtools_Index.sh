#PBS -S /bin/bash
#PBS -N Samtools_Index1.0.sh
#PBS -q batch
#PBS -l nodes=1:ppn=1:AMD
#PBS -l mem=20gb
#PBS -l walltime=480:00:00

cd /lustre1/mdh72859/Denovo_Assembly/Bam_test
module load SAMtools/1.6-foss-2016b
time samtools index 101_Sorted.bam 101_Sorted.bai