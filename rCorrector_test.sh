#PBS -S /bin/bash
#PBS -q batch
#PBS -N rCorrector1.3test
#PBS -l nodes=1:ppn=1
#PBS -l walltime=48:00:00
#PBS -l mem=20gb

cd /lustre1/mdh72859/Denovo_Assembly
module load Rcorrector/1.0.2-foss-2016b
run_rcorrector.pl -1 /lustre1/mdh72859/Denovo_Assembly/Fastq_Reads/138599-134-47587572/138599-134_S21_L001_R1_001.fastq,/lustre1/mdh72859/Denovo_Assembly/Fastq_Reads/138599-134-47587572/138599-134_S21_L002_R1_001.fastq,/lustre1/mdh72859/Denovo_Assembly/Fastq_Reads/138599-134-47587572/138599-134_S21_L003_R1_001.fastq,/lustre1/mdh72859/Denovo_Assembly/Fastq_Reads/138599-134-47587572/138599-134_S21_L004_R1_001.fastq -2 /lustre1/mdh72859/Denovo_Assembly/Fastq_Reads/138599-134-47587572/138599-134_S21_L001_R2_001.fastq,/lustre1/mdh72859/Denovo_Assembly/Fastq_Reads/138599-134-47587572/138599-134_S21_L002_R2_001.fastq,/lustre1/mdh72859/Denovo_Assembly/Fastq_Reads/138599-134-47587572/138599-134_S21_L003_R2_001.fastq,/lustre1/mdh72859/Denovo_Assembly/Fastq_Reads/138599-134-47587572/138599-134_S21_L004_R2_001.fastq > rCorrector_134.log