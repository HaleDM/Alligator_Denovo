#PBS -S /bin/bash
#PBS -q batch
#PBS -N Salmon_test1.0
#PBS -l nodes=1:ppn=1:AMD
#PBS -l walltime=480:00:00
#PBS -l mem=10gb

cd /lustre1/mdh72859/Denovo_Assembly/Salmon
mkdir Salmon_Quant

module load Salmon/0.8.2-foss-2016b-Python-2.7.14
salmon quant -t transcripts.fa -l A -a 101_Sorted.bam -o Salmon_Quant/101_Salmon_quant