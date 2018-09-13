#PBS -S /bin/bash
#PBS -N Blast_db1.2
#PBS -q batch
#PBS -l nodes=1:ppn=1:AMD
#PBS -l walltime=480:00:00
#PBS -l mem=20gb

cd /lustre1/mdh72859/Denovo_Assembly
mkdir Trinotate
cp Trinity_Assembly.Trinity.fasta /lustre1/mdh72859/Denovo_Assembly/Trinotate
cd Trinotate

module load BLAST+/2.6.0-foss-2016b-Python-2.7.14 
cd /lustre1/mdh72859/Denovo_Assembly/Trinotate
wget "ftp://ftp.uniprot.org/pub/databases/uniprot/current_release/knowledgebase/complete/uniprot_sprot.fasta.gz"
gunzip uniprot_sprot.fasta.gz
makeblastdb -in uniprot_sprot.fasta -dbtype prot -out uniprot_sprot_database

awk 'BEGIN {n_seq=0;} /^>/ {if(n_seq%20000==0){file=sprintf("myseq%d.fa",n_seq);} print >> file; n_seq++; next;} { print >> file; }' < Trinity_Assembly.Trinity.fasta
