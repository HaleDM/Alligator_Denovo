#PBS -S /bin/bash
#PBS -q batch
#PBS -N Trinotate1.3
#PBS -l nodes=1:ppn=1
#PBS -l walltime=4:00:00
#PBS -l mem=2gb

cd /lustre1/mdh72859/Denovo_Assembly/Trinotate

module load Trinotate/3.1.1-foss-2016b
mkdir -p /lscratch/${USER}_${PBS_JOBID}
echo "Node: $(cat $PBS_NODEFILE | sort -u | tr '\n' ' ')"
cp Trinotate.sqlite /lscratch/${USER}_${PBS_JOBID}/

Trinotate /lscratch/${USER}_${PBS_JOBID}/Trinotate.sqlite init --gene_trans_map Trinity_Assembly.Trinity.fasta.gene_trans_map --transcript_fasta Trinity_Assembly.Trinity.fasta --transdecoder_pep longest_orfs.pep LOAD_swissprot_blastx Merged_Blastx.out LOAD_swissprot_blastp Merged_Blastp.out LOAD_pfam Merged_PFAM.out LOAD_signalp SignalP1.0.o367996 LOAD_tmhmm TMHMM1.0.o367987
Trinotate /lscratch/${USER}_${PBS_JOBID}/Trinotate.sqlite report > Trinotate.xls
cp /lscratch/${USER}_${PBS_JOBID}/Trinotate.sqlite Trinotate.sqlite
rm -rf /lscratch/${USER}_${PBS_JOBID}