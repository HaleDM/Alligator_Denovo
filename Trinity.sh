#PBS -S /bin/bash
#PBS -N Trinity_Assembly1.2
#PBS -q highmem_q
#PBS -l nodes=1:ppn=16
#PBS -l walltime=800:00:00
#PBS -l mem=100gb

cd /lustre1/mdh72859/Denovo_Assembly/rCorrector_Output

module load Trinity/2.6.6-foss-2016b
Trinity --seqType fq --max_memory 100G --CPU 8 --no_version_check --full_cleanup --normalize_reads --SS_lib_type RF --left fixed_134_R1.cor.fq,fixed_68_R1.cor.fq,fixed_8_R1.cor.fq,fixed_90_R1.cor.fq,fixed_110_R1.cor.fq,fixed_23_R1.cor.fq,fixed_63_R1.cor.fq,fixed_69_R1.cor.fq --right fixed_134_R2.cor.fq,fixed_68_R2.cor.fq,fixed_8_R2.cor.fq,fixed_90_R2.cor.fq,fixed_110_R2.cor.fq,fixed_23_R2.cor.fq,fixed_63_R2.cor.fq,fixed_69_R2.cor.fq --output /lustre1/mdh72859/Denovo_Assembly/Trinity_Assembly