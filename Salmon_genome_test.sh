#PBS -S /bin/bash
#PBS -q batch
#PBS -N Salmon_test4.0
#PBS -l nodes=1:ppn=1:AMD
#PBS -l walltime=480:00:00
#PBS -l mem=10gb

cd /lustre1/mdh72859/Denovo_Assembly/Salmon
mkdir Salmon_Quant3
module load Salmon/0.8.2-foss-2016b-Python-2.7.14
salmon quant -i genome.index -l A -1 138599-110_S27_L001_R1_001.fastq 138599-110_S27_L002_R1_001.fastq 138599-110_S27_L003_R1_001.fastq 138599-110_S27_L004_R1_001.fastq -2 138599-110_S27_L001_R2_001.fastq 138599-110_S27_L002_R2_001.fastq 138599-110_S27_L003_R2_001.fastq 138599-110_S27_L004_R2_001.fastq -o Salmon_Quant3/110