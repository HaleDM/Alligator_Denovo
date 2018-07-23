#PBS -S /bin/bash
#PBS -N Trinity1.0test
#PBS -q highmem_q
#PBS -l nodes=1:ppn=16
#PBS -l walltime=100:00:00
#PBS -l mem=100gb

cd /lustre1/mdh72859/Denovo_Assembly/rCorrector_Output
module load Trinity/2.6.6-foss-2016b
Trinity --seqType fq --max_memory 100G --CPU 8 --no_version_check --full_cleanup --normalize_reads --left fixed_138599-134_S21_L001_R1_001.cor.fq,fixed_138599-134_S21_L002_R1_001.cor.fq,fixed_138599-134_S21_L003_R1_001.cor.fq, fixed_138599-134_S21_L004_R1_001.cor.fq --right fixed_138599-134_S21_L001_R2_001.cor.fq,fixed_138599-134_S21_L002_R2_001.cor.fq,fixed_138599-134_S21_L003_R2_001.cor.fq,fixed_138599-134_S21_L004_R2_001.cor.fq