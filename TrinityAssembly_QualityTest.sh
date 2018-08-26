#PBS -S /bin/bash
#PBS -N TrinityAssembly_QualityTest1.1
#PBS -q batch
#PBS -l nodes=1:ppn=1
#PBS -l walltime=100:00:00
#PBS -l mem=10gb

cd /lustre1/mdh72859/Denovo_Assembly
mkdir TrinityAssembly_Quality
cd /lustre1/mdh72859/Denovo_Assembly/rCorrector_Output
cp fixed_138599-134* /lustre1/mdh72859/Denovo_Assembly/TrinityAssembly_Quality
cd /lustre1/mdh72859/Denovo_Assembly
cp trinity_134_test2.Trinity.fasta /lustre1/mdh72859/Denovo_Assembly/TrinityAssembly_Quality

cd /lustre1/mdh72859/Denovo_Assembly/TrinityAssembly_Quality
module load Trinity/2014-07-17-foss-2016b
/usr/local/apps/eb/Trinity/2014-07-17-foss-2016b/trinityrnaseq_r20140717/util/TrinityStats.pl trinity_134_test2.Trinity.fasta > Trinity_assembly.metrics

module load Bowtie2/2.3.4.1-foss-2016b
cd /lustre1/mdh72859/Denovo_Assembly/TrinityAssembly_Quality
bowtie2-build -f trinity_134_test2.Trinity.fasta Trinity_test_fasta
bowtie2 -x Trinity_test_fasta -1 fixed_138599-134_S21_L001_R1_001.cor.fq,fixed_138599-134_S21_L002_R1_001.cor.fq,fixed_138599-134_S21_L003_R1_001.cor.fq,fixed_138599-134_S21_L004_R1_001.cor.fq -2 fixed_138599-134_S21_L001_R2_001.cor.fq,fixed_138599-134_S21_L002_R2_001.cor.fq,fixed_138599-134_S21_L003_R2_001.cor.fq,fixed_138599-134_S21_L004_R2_001.cor.fq -S Trinity_test_alignment

module load SAMtools/1.6-foss-2016b
cd /lustre1/mdh72859/Denovo_Assembly/TrinityAssembly_Quality
samtools sort -@ 4 -o Trinity_test_alignment_sorted.bam Trinity_test_alignment

/usr/local/apps/eb/Trinity/2014-07-17-foss-2016b/trinityrnaseq_r20140717/util/SAM_nameSorted_to_uniq_count_stats.pl Trinity_test_alignment_sorted.bam > /lustre1/mdh72859/Denovo_Assembly/TrinityAssembly_Quality/Trinity_alignment.statistics