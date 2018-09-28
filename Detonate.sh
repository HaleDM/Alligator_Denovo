#PBS -S /bin/bash
#PBS -q batch
#PBS -N Detonate_test1.1
#PBS -l nodes=1:ppn=4
#PBS -l walltime=24:00:00
#PBS -l mem=10gb

cd /lustre1/mdh72859/Denovo_Assembly/Detonate

module load detonate/1.11

rsem-eval-calculate-score --paired-end fixed_110_R1.cor.fq,fixed_134_R1.cor.fq,fixed_23_R1.cor.fq,fixed_63_R1.cor.fq,fixed_68_R1.cor.fq,fixed_69_R1.cor.fq,fixed_8_R1.cor.fq,fixed_90_R1.cor.fq fixed_110_R2.cor.fq,fixed_134_R2.cor.fq,fixed_23_R2.cor.fq,fixed_63_R2.cor.fq,fixed_68_R2.cor.fq,fixed_69_R2.cor.fq,fixed_8_R2.cor.fq,fixed_90_R2.cor.fq Trinity_Assembly.Trinity.fasta Total_DeNovo 150 
rsem-eval-calculate-score --paired-end fixed_110_R1.cor.fq,fixed_134_R1.cor.fq,fixed_23_R1.cor.fq,fixed_63_R1.cor.fq,fixed_68_R1.cor.fq,fixed_69_R1.cor.fq,fixed_8_R1.cor.fq,fixed_90_R1.cor.fq fixed_110_R2.cor.fq,fixed_134_R2.cor.fq,fixed_23_R2.cor.fq,fixed_63_R2.cor.fq,fixed_68_R2.cor.fq,fixed_69_R2.cor.fq,fixed_8_R2.cor.fq,fixed_90_R2.cor.fq Trinity-GG.fasta.fasta Genome_Guided 150
