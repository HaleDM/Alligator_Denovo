#PBS -S /bin/bash
#PBS -N TrimGalore1.0test
#PBS -q batch
#PBS -l nodes=1:ppn=1:AMD
#PBS -l walltime=48:00:00
#PBS -l mem=10gb

cd /lustre1/mdh72859/Denovo_Assembly
mkdir TrimGalore_Fastqc

module load Trim_Galore/0.4.5-foss-2016b
trim_galore --fastqc --fastqc_args "--outdir /lustre1/mdh72859/Denovo_Assembly/TrimGalore_Fastqc/ -f fastq" -o /lustre1/mdh72859/Denovo_Assembly/TrimGalore_Fastqc/ --paired /lustre1/mdh72859/Denovo_Assembly/rCorrector_Output/fixed_138599-110_S27_L001_R1_001.cor.fq /lustre1/mdh72859/Denovo_Assembly/rCorrector_Output/fixed_138599-110_S27_L001_R2_001.cor.fq