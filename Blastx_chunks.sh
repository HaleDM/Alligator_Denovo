#PBS -S /bin/bash
#PBS -M matthew.hale@uga.edu 
#PBS -m ae
#PBS -N Blastx0_20k
#PBS -q batch
#PBS -l nodes=1:ppn=4:AMD
#PBS -l walltime=480:00:00
#PBS -l mem=50gb
module load BLAST+/2.6.0-foss-2016b-Python-2.7.14
cd /lustre1/mdh72859/Denovo_Assembly/Trinotate
blastx -query myseq0.fa -db uniprot_sprot_database -out Trinity_assembly_Blastx0 -outfmt 6 -evalue 0.0001 -num_threads 4

#PBS -S /bin/bash
#PBS -M matthew.hale@uga.edu 
#PBS -m ae
#PBS -N Blastx20_40k
#PBS -q batch
#PBS -l nodes=1:ppn=4:AMD
#PBS -l walltime=480:00:00
#PBS -l mem=50gb
module load BLAST+/2.6.0-foss-2016b-Python-2.7.14
cd /lustre1/mdh72859/Denovo_Assembly/Trinotate
blastx -query myseq20000.fa -db uniprot_sprot_database -out Trinity_assembly_Blastx1 -outfmt 6 -evalue 0.0001 -num_threads 4

#PBS -S /bin/bash
#PBS -M matthew.hale@uga.edu 
#PBS -m ae
#PBS -N Blastx40_60k
#PBS -q batch
#PBS -l nodes=1:ppn=4:AMD
#PBS -l walltime=480:00:00
#PBS -l mem=50gb
module load BLAST+/2.6.0-foss-2016b-Python-2.7.14
cd /lustre1/mdh72859/Denovo_Assembly/Trinotate
blastx -query myseq40000.fa -db uniprot_sprot_database -out Trinity_assembly_Blastx2 -outfmt 6 -evalue 0.0001 -num_threads 4

#PBS -S /bin/bash
#PBS -M matthew.hale@uga.edu 
#PBS -m ae
#PBS -N Blastx60_80k
#PBS -q batch
#PBS -l nodes=1:ppn=4:AMD
#PBS -l walltime=480:00:00
#PBS -l mem=50gb
module load BLAST+/2.6.0-foss-2016b-Python-2.7.14
cd /lustre1/mdh72859/Denovo_Assembly/Trinotate
blastx -query myseq60000.fa -db uniprot_sprot_database -out Trinity_assembly_Blastx3 -outfmt 6 -evalue 0.0001 -num_threads 4

#PBS -S /bin/bash
#PBS -M matthew.hale@uga.edu 
#PBS -m ae
#PBS -N Blastx80_100k
#PBS -q batch
#PBS -l nodes=1:ppn=4:AMD
#PBS -l walltime=480:00:00
#PBS -l mem=50gb
module load BLAST+/2.6.0-foss-2016b-Python-2.7.14
cd /lustre1/mdh72859/Denovo_Assembly/Trinotate
blastx -query myseq80000.fa -db uniprot_sprot_database -out Trinity_assembly_Blastx4 -outfmt 6 -evalue 0.0001 -num_threads 4

#PBS -S /bin/bash
#PBS -M matthew.hale@uga.edu 
#PBS -m ae
#PBS -N Blastx100_120k
#PBS -q batch
#PBS -l nodes=1:ppn=4:AMD
#PBS -l walltime=480:00:00
#PBS -l mem=50gb
module load BLAST+/2.6.0-foss-2016b-Python-2.7.14
cd /lustre1/mdh72859/Denovo_Assembly/Trinotate
blastx -query myseq100000.fa -db uniprot_sprot_database -out Trinity_assembly_Blastx5 -outfmt 6 -evalue 0.0001 -num_threads 4

#PBS -S /bin/bash
#PBS -M matthew.hale@uga.edu 
#PBS -m ae
#PBS -N Blastx120_140k
#PBS -q batch
#PBS -l nodes=1:ppn=4:AMD
#PBS -l walltime=480:00:00
#PBS -l mem=50gb
module load BLAST+/2.6.0-foss-2016b-Python-2.7.14
cd /lustre1/mdh72859/Denovo_Assembly/Trinotate
blastx -query myseq120000.fa -db uniprot_sprot_database -out Trinity_assembly_Blastx6 -outfmt 6 -evalue 0.0001 -num_threads 4

#PBS -S /bin/bash
#PBS -M matthew.hale@uga.edu 
#PBS -m ae
#PBS -N Blastx140_160k
#PBS -q batch
#PBS -l nodes=1:ppn=4:AMD
#PBS -l walltime=480:00:00
#PBS -l mem=50gb
module load BLAST+/2.6.0-foss-2016b-Python-2.7.14
cd /lustre1/mdh72859/Denovo_Assembly/Trinotate
blastx -query myseq140000.fa -db uniprot_sprot_database -out Trinity_assembly_Blastx7 -outfmt 6 -evalue 0.0001 -num_threads 4

#PBS -S /bin/bash
#PBS -M matthew.hale@uga.edu 
#PBS -m ae
#PBS -N Blastx160_180k
#PBS -q batch
#PBS -l nodes=1:ppn=4:AMD
#PBS -l walltime=480:00:00
#PBS -l mem=50gb
module load BLAST+/2.6.0-foss-2016b-Python-2.7.14
cd /lustre1/mdh72859/Denovo_Assembly/Trinotate
blastx -query myseq160000.fa -db uniprot_sprot_database -out Trinity_assembly_Blastx8 -outfmt 6 -evalue 0.0001 -num_threads 4

#PBS -S /bin/bash
#PBS -M matthew.hale@uga.edu 
#PBS -m ae
#PBS -N Blastx180_200k
#PBS -q batch
#PBS -l nodes=1:ppn=4:AMD
#PBS -l walltime=480:00:00
#PBS -l mem=50gb
module load BLAST+/2.6.0-foss-2016b-Python-2.7.14
cd /lustre1/mdh72859/Denovo_Assembly/Trinotate
blastx -query myseq180000.fa -db uniprot_sprot_database -out Trinity_assembly_Blastx9 -outfmt 6 -evalue 0.0001 -num_threads 4

#PBS -S /bin/bash
#PBS -M matthew.hale@uga.edu 
#PBS -m ae
#PBS -N Blastx200_220k
#PBS -q batch
#PBS -l nodes=1:ppn=4:AMD
#PBS -l walltime=480:00:00
#PBS -l mem=50gb
module load BLAST+/2.6.0-foss-2016b-Python-2.7.14
cd /lustre1/mdh72859/Denovo_Assembly/Trinotate
blastx -query myseq200000.fa -db uniprot_sprot_database -out Trinity_assembly_Blastx10 -outfmt 6 -evalue 0.0001 -num_threads 4

#PBS -S /bin/bash
#PBS -M matthew.hale@uga.edu 
#PBS -m ae
#PBS -N Blastx220k
#PBS -q batch
#PBS -l nodes=1:ppn=4:AMD
#PBS -l walltime=480:00:00
#PBS -l mem=50gb
module load BLAST+/2.6.0-foss-2016b-Python-2.7.14
cd /lustre1/mdh72859/Denovo_Assembly/Trinotate
blastx -query myseq220000.fa -db uniprot_sprot_database -out Trinity_assembly_Blastx11 -outfmt 6 -evalue 0.0001 -num_threads 4
