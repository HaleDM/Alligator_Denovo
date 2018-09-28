#PBS -S /bin/bash
#PBS -N TrinityAssembly_QualityAssessment1.0
#PBS -q batch
#PBS -l nodes=1:ppn=1
#PBS -l walltime=100:00:00
#PBS -l mem=10gb

cd /lustre1/mdh72859/Denovo_Assembly/rCorrector_Output
cp fixed_110* /lustre1/mdh72859/Denovo_Assembly/TrinityAssembly_Quality
cp fixed_134* /lustre1/mdh72859/Denovo_Assembly/TrinityAssembly_Quality
cp fixed_23* /lustre1/mdh72859/Denovo_Assembly/TrinityAssembly_Quality
cp fixed_63* /lustre1/mdh72859/Denovo_Assembly/TrinityAssembly_Quality
cp fixed_68* /lustre1/mdh72859/Denovo_Assembly/TrinityAssembly_Quality
cp fixed_69* /lustre1/mdh72859/Denovo_Assembly/TrinityAssembly_Quality
cp fixed_8* /lustre1/mdh72859/Denovo_Assembly/TrinityAssembly_Quality
cp fixed_90* /lustre1/mdh72859/Denovo_Assembly/TrinityAssembly_Quality

cd /lustre1/mdh72859/Denovo_Assembly
cp Trinity_Assembly.Trinity.fasta /lustre1/mdh72859/Denovo_Assembly/TrinityAssembly_Quality

cd /lustre1/mdh72859/Denovo_Assembly/TrinityAssembly_Quality
module load Trinity/2.6.6-foss-2016b
/usr/local/apps/eb/Trinity/2.6.6-foss-2016b/trinityrnaseq-Trinity-v2.6.6/util/TrinityStats.pl Trinity_Assembly.Trinity.fasta > Trinity_FullAssembly.metrics

module load Bowtie2/2.3.4.1-foss-2016b
cd /lustre1/mdh72859/Denovo_Assembly/TrinityAssembly_Quality
bowtie2-build -f Trinity_Assembly.Trinity.fasta Trinity_FullFasta
bowtie2 -x Trinity_FullFasta -1 fixed_134_R1.cor.fq,fixed_68_R1.cor.fq,fixed_8_R1.cor.fq,fixed_90_R1.cor.fq,fixed_110_R1.cor.fq,fixed_23_R1.cor.fq,fixed_63_R1.cor.fq,fixed_69_R1.cor.fq -2 fixed_134_R2.cor.fq,fixed_68_R2.cor.fq,fixed_8_R2.cor.fq,fixed_90_R2.cor.fq,fixed_110_R2.cor.fq,fixed_23_R2.cor.fq,fixed_63_R2.cor.fq,fixed_69_R2.cor.fq -S Trinity_FullAlignment

module load SAMtools/1.6-foss-2016b
cd /lustre1/mdh72859/Denovo_Assembly/TrinityAssembly_Quality
samtools sort -@ 4 -o Trinity_FullAlignment.bam Trinity_FullAlignment

/usr/local/apps/eb/Trinity/2.6.6-foss-2016b/trinityrnaseq-Trinity-v2.6.6/util/misc/SAM_nameSorted_to_uniq_count_stats.pl Trinity_FullAlignment_sorted.bam > /lustre1/mdh72859/Denovo_Assembly/TrinityAssembly_Quality/Trinity_FullAlignment.statistics