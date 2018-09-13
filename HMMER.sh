#PBS -S /bin/bash
#PBS -N HMMER1.1.sh
#PBS -q batch
#PBS -l nodes=1:ppn=2:AMD
#PBS -l mem=40gb
#PBS -l walltime=480:00:00

cd /lustre1/mdh72859/Denovo_Assembly/Trinotate
module load HMMER/3.1b2-foss-2016b
hmmpress Pfam-A.hmm
hmmscan --cpu 2 --tblout TrinotatePFAM.out --domtblout TrinotateDomainsPFAM.out Pfam-A.hmm /lustre1/mdh72859/Denovo_Assembly/Trinotate/Trinity_Assembly.Trinity.fasta.transdecoder_dir/longest_orfs.pep
