#PBS -S /bin/bash
#PBS -q batch
#PBS -N Salmon_test_index2.0
#PBS -l nodes=1:ppn=1:AMD
#PBS -l walltime=480:00:00
#PBS -l mem=10gb

cd /lustre1/mdh72859/Denovo_Assembly/Salmon

module load Salmon/0.8.2-foss-2016b-Python-2.7.14
salmon index -t transcripts.fa -i transcripts.index --type quasi -k 31