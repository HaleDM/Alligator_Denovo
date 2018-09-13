#PBS -S /bin/bash
#PBS -q batch
#PBS -N Trinotate
#PBS -l nodes=1:ppn=1
#PBS -l walltime=4:00:00
#PBS -l mem=2gb

cd /usr/local/apps/eb/Trinotate/3.1.1-foss-2016b/
cp Trinotate.sqlite /lustre1/mdh72859/Denovo_Assembly/Trinotate
cd /lustre1/mdh72859/Denovo_Assembly/Trinotate
module load Trinotate/3.1.1-foss-2016b
Trinotate Trinotate.sqlite init --gene_trans_map <>  --transcript_fasta <> --transdecoder_pep <>
Trinotate Trinotate.sqlite LOAD_swissprot_blastx swissprot.blastx.outfmt6 
Trinotate Trinotate.sqlite LOAD_swissprot_blastp swissprot.blastp.outfmt6
Trinotate Trinotate.sqlite LOAD_pfam TrinotatePFAM.out
Trinotate Trinotate.sqlite LOAD_signalp signalp.out
Trinotate Trinotate.sqlite LOAD_tmhmm tmhmm.out
             