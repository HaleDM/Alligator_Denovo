#PBS -S /bin/bash
#PBS -N TMHMM1.0
#PBS -q batch
#PBS -l nodes=1:ppn=1:AMD
#PBS -l walltime=480:00:00
#PBS -l mem=10gb

cd /lustre1/mdh72859/Denovo_Assembly/Trinotate

module load TMHMM/2.0c-foss-2016b-Perl-5.24.1
tmhmm /lustre1/mdh72859/Denovo_Assembly/Trinotate/Trinity_Assembly.Trinity.fasta.transdecoder_dir/longest_orfs.pep