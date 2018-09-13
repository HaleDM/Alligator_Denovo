#PBS -S /bin/bash
#PBS -M matthew.hale@uga.edu 
#PBS -m ae
#PBS -N Blastp0_20k
#PBS -q batch
#PBS -l nodes=1:ppn=4:AMD
#PBS -l walltime=480:00:00
#PBS -l mem=50gb
module load BLAST+/2.6.0-foss-2016b-Python-2.7.14
cd /lustre1/mdh72859/Denovo_Assembly/Trinotate
blastp -query /lustre1/mdh72859/Denovo_Assembly/Trinotate/Trinity_Assembly.Trinity.fasta.transdecoder_dir/myAAseq0.fa -db uniprot_sprot_database -out Trinity_assembly_Blastp0 -outfmt 6 -evalue 0.0001 -num_threads 4

#PBS -S /bin/bash
#PBS -M matthew.hale@uga.edu 
#PBS -m ae
#PBS -N Blastp20_40k
#PBS -q batch
#PBS -l nodes=1:ppn=4:AMD
#PBS -l walltime=480:00:00
#PBS -l mem=50gb
module load BLAST+/2.6.0-foss-2016b-Python-2.7.14
cd /lustre1/mdh72859/Denovo_Assembly/Trinotate
blastp -query /lustre1/mdh72859/Denovo_Assembly/Trinotate/Trinity_Assembly.Trinity.fasta.transdecoder_dir/myAAseq20000.fa -db uniprot_sprot_database -out Trinity_assembly_Blastp1 -outfmt 6 -evalue 0.0001 -num_threads 4

#PBS -S /bin/bash
#PBS -M matthew.hale@uga.edu 
#PBS -m ae
#PBS -N Blastp40_60K
#PBS -q batch
#PBS -l nodes=1:ppn=4:AMD
#PBS -l walltime=480:00:00
#PBS -l mem=50gb
module load BLAST+/2.6.0-foss-2016b-Python-2.7.14
cd /lustre1/mdh72859/Denovo_Assembly/Trinotate
blastp -query /lustre1/mdh72859/Denovo_Assembly/Trinotate/Trinity_Assembly.Trinity.fasta.transdecoder_dir/myAAseq40000.fa -db uniprot_sprot_database -out Trinity_assembly_Blastp2 -outfmt 6 -evalue 0.0001 -num_threads 4

#PBS -S /bin/bash
#PBS -M matthew.hale@uga.edu 
#PBS -m ae
#PBS -N Blastp60_80k
#PBS -q batch
#PBS -l nodes=1:ppn=4:AMD
#PBS -l walltime=480:00:00
#PBS -l mem=50gb
module load BLAST+/2.6.0-foss-2016b-Python-2.7.14
cd /lustre1/mdh72859/Denovo_Assembly/Trinotate
blastp -query /lustre1/mdh72859/Denovo_Assembly/Trinotate/Trinity_Assembly.Trinity.fasta.transdecoder_dir/myAAseq60000.fa -db uniprot_sprot_database -out Trinity_assembly_Blastp3 -outfmt 6 -evalue 0.0001 -num_threads 4

#PBS -S /bin/bash
#PBS -M matthew.hale@uga.edu 
#PBS -m ae
#PBS -N Blastp80_100k
#PBS -q batch
#PBS -l nodes=1:ppn=4:AMD
#PBS -l walltime=480:00:00
#PBS -l mem=50gb
module load BLAST+/2.6.0-foss-2016b-Python-2.7.14
cd /lustre1/mdh72859/Denovo_Assembly/Trinotate
blastp -query /lustre1/mdh72859/Denovo_Assembly/Trinotate/Trinity_Assembly.Trinity.fasta.transdecoder_dir/myAAseq80000.fa -db uniprot_sprot_database -out Trinity_assembly_Blastp4 -outfmt 6 -evalue 0.0001 -num_threads 4

#PBS -S /bin/bash
#PBS -M matthew.hale@uga.edu 
#PBS -m ae
#PBS -N Blastp100_120K
#PBS -q batch
#PBS -l nodes=1:ppn=4:AMD
#PBS -l walltime=480:00:00
#PBS -l mem=50gb
module load BLAST+/2.6.0-foss-2016b-Python-2.7.14
cd /lustre1/mdh72859/Denovo_Assembly/Trinotate
blastp -query /lustre1/mdh72859/Denovo_Assembly/Trinotate/Trinity_Assembly.Trinity.fasta.transdecoder_dir/myAAseq100000.fa -db uniprot_sprot_database -out Trinity_assembly_Blastp5 -outfmt 6 -evalue 0.0001 -num_threads 4

#PBS -S /bin/bash
#PBS -M matthew.hale@uga.edu 
#PBS -m ae
#PBS -N Blastp120_140k
#PBS -q batch
#PBS -l nodes=1:ppn=4:AMD
#PBS -l walltime=480:00:00
#PBS -l mem=50gb
module load BLAST+/2.6.0-foss-2016b-Python-2.7.14
cd /lustre1/mdh72859/Denovo_Assembly/Trinotate
blastp -query /lustre1/mdh72859/Denovo_Assembly/Trinotate/Trinity_Assembly.Trinity.fasta.transdecoder_dir/myAAseq120000.fa -db uniprot_sprot_database -out Trinity_assembly_Blastp6 -outfmt 6 -evalue 0.0001 -num_threads 4

#PBS -S /bin/bash
#PBS -M matthew.hale@uga.edu 
#PBS -m ae
#PBS -N Blastp140_160k
#PBS -q batch
#PBS -l nodes=1:ppn=4:AMD
#PBS -l walltime=480:00:00
#PBS -l mem=50gb
module load BLAST+/2.6.0-foss-2016b-Python-2.7.14
cd /lustre1/mdh72859/Denovo_Assembly/Trinotate
blastp -query /lustre1/mdh72859/Denovo_Assembly/Trinotate/Trinity_Assembly.Trinity.fasta.transdecoder_dir/myAAseq140000.fa -db uniprot_sprot_database -out Trinity_assembly_Blastp7 -outfmt 6 -evalue 0.0001 -num_threads 4

#PBS -S /bin/bash
#PBS -M matthew.hale@uga.edu 
#PBS -m ae
#PBS -N Blastp160_180k
#PBS -q batch
#PBS -l nodes=1:ppn=4:AMD
#PBS -l walltime=480:00:00
#PBS -l mem=50gb
module load BLAST+/2.6.0-foss-2016b-Python-2.7.14
cd /lustre1/mdh72859/Denovo_Assembly/Trinotate
blastp -query /lustre1/mdh72859/Denovo_Assembly/Trinotate/Trinity_Assembly.Trinity.fasta.transdecoder_dir/myAAseq160000.fa -db uniprot_sprot_database -out Trinity_assembly_Blastp8 -outfmt 6 -evalue 0.0001 -num_threads 4

#PBS -S /bin/bash
#PBS -M matthew.hale@uga.edu 
#PBS -m ae
#PBS -N Blastp180k
#PBS -q batch
#PBS -l nodes=1:ppn=4:AMD
#PBS -l walltime=480:00:00
#PBS -l mem=50gb
module load BLAST+/2.6.0-foss-2016b-Python-2.7.14
cd /lustre1/mdh72859/Denovo_Assembly/Trinotate
blastp -query /lustre1/mdh72859/Denovo_Assembly/Trinotate/Trinity_Assembly.Trinity.fasta.transdecoder_dir/myAAseq180000.fa -db uniprot_sprot_database -out Trinity_assembly_Blastp9 -outfmt 6 -evalue 0.0001 -num_threads 4

