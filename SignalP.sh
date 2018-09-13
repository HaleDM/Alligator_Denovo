#PBS -S /bin/bash
#PBS -N SignalP1.0
#PBS -q batch
#PBS -l nodes=1:ppn=1
#PBS -l walltime=120:00:00
#PBS -l mem=20gb

cd /lustre1/mdh72859/Denovo_Assembly/Trinotate
module load SignalP/4.1f-foss-2016b
time signalp /lustre1/mdh72859/Denovo_Assembly/Trinotate/Trinity_Assembly.Trinity.fasta.transdecoder_dir/longest_orfs.pep
