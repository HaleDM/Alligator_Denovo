#PBS -S /bin/bash
#PBS -N Transdecoder1.0
#PBS -q batch
#PBS -l nodes=1:ppn=1:AMD
#PBS -l walltime=480:00:00
#PBS -l mem=10gb

cd /lustre1/mdh72859/Denovo_Assembly/Trinotate

module load TransDecoder/2.1.0-foss-2016b-Perl-5.24.1
TransDecoder.LongOrfs -t Trinity_Assembly.Trinity.fasta
