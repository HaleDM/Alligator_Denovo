#PBS -S /bin/bash
#PBS -N HMMER0_20k.sh
#PBS -q batch
#PBS -l nodes=1:ppn=2:AMD
#PBS -l mem=40gb
#PBS -l walltime=480:00:00

cd /lustre1/mdh72859/Denovo_Assembly/Trinotate
module load HMMER/3.1b2-foss-2016b
hmmpress Pfam-A.hmm
hmmscan --cpu 2 --tblout TrinotatePFAM0.out --domtblout TrinotateDomainsPFAM0.out Pfam-A.hmm /lustre1/mdh72859/Denovo_Assembly/Trinotate/Trinity_Assembly.Trinity.fasta.transdecoder_dir/myAAseq0.fa

#PBS -S /bin/bash
#PBS -N HMMER20_40k.sh
#PBS -q batch
#PBS -l nodes=1:ppn=2:AMD
#PBS -l mem=40gb
#PBS -l walltime=480:00:00

cd /lustre1/mdh72859/Denovo_Assembly/Trinotate
module load HMMER/3.1b2-foss-2016b
hmmscan --cpu 2 --tblout TrinotatePFAM1.out --domtblout TrinotateDomainsPFAM1.out Pfam-A.hmm /lustre1/mdh72859/Denovo_Assembly/Trinotate/Trinity_Assembly.Trinity.fasta.transdecoder_dir/myAAseq20000.fa

#PBS -S /bin/bash
#PBS -N HMMER40_60k.sh
#PBS -q batch
#PBS -l nodes=1:ppn=2:AMD
#PBS -l mem=40gb
#PBS -l walltime=480:00:00

cd /lustre1/mdh72859/Denovo_Assembly/Trinotate
module load HMMER/3.1b2-foss-2016b
hmmscan --cpu 2 --tblout TrinotatePFAM2.out --domtblout TrinotateDomainsPFAM2.out Pfam-A.hmm /lustre1/mdh72859/Denovo_Assembly/Trinotate/Trinity_Assembly.Trinity.fasta.transdecoder_dir/myAAseq40000.fa

#PBS -S /bin/bash
#PBS -N HMMER60_80k.sh
#PBS -q batch
#PBS -l nodes=1:ppn=2:AMD
#PBS -l mem=40gb
#PBS -l walltime=480:00:00

cd /lustre1/mdh72859/Denovo_Assembly/Trinotate
module load HMMER/3.1b2-foss-2016b
hmmscan --cpu 2 --tblout TrinotatePFAM3.out --domtblout TrinotateDomainsPFAM3.out Pfam-A.hmm /lustre1/mdh72859/Denovo_Assembly/Trinotate/Trinity_Assembly.Trinity.fasta.transdecoder_dir/myAAseq60000.fa

#PBS -S /bin/bash
#PBS -N HMMER80_100k.sh
#PBS -q batch
#PBS -l nodes=1:ppn=2:AMD
#PBS -l mem=40gb
#PBS -l walltime=480:00:00

cd /lustre1/mdh72859/Denovo_Assembly/Trinotate
module load HMMER/3.1b2-foss-2016b
hmmscan --cpu 2 --tblout TrinotatePFAM4.out --domtblout TrinotateDomainsPFAM4.out Pfam-A.hmm /lustre1/mdh72859/Denovo_Assembly/Trinotate/Trinity_Assembly.Trinity.fasta.transdecoder_dir/myAAseq80000.fa

#PBS -S /bin/bash
#PBS -N HMMER100_120k.sh
#PBS -q batch
#PBS -l nodes=1:ppn=2:AMD
#PBS -l mem=40gb
#PBS -l walltime=480:00:00

cd /lustre1/mdh72859/Denovo_Assembly/Trinotate
module load HMMER/3.1b2-foss-2016b
hmmscan --cpu 2 --tblout TrinotatePFAM5.out --domtblout TrinotateDomainsPFAM5.out Pfam-A.hmm /lustre1/mdh72859/Denovo_Assembly/Trinotate/Trinity_Assembly.Trinity.fasta.transdecoder_dir/myAAseq100000.fa

#PBS -S /bin/bash
#PBS -N HMMER120_140k.sh
#PBS -q batch
#PBS -l nodes=1:ppn=2:AMD
#PBS -l mem=40gb
#PBS -l walltime=480:00:00

cd /lustre1/mdh72859/Denovo_Assembly/Trinotate
module load HMMER/3.1b2-foss-2016b
hmmscan --cpu 2 --tblout TrinotatePFAM6.out --domtblout TrinotateDomainsPFAM6.out Pfam-A.hmm /lustre1/mdh72859/Denovo_Assembly/Trinotate/Trinity_Assembly.Trinity.fasta.transdecoder_dir/myAAseq120000.fa

#PBS -S /bin/bash
#PBS -N HMMER140_160k.sh
#PBS -q batch
#PBS -l nodes=1:ppn=2:AMD
#PBS -l mem=40gb
#PBS -l walltime=480:00:00

cd /lustre1/mdh72859/Denovo_Assembly/Trinotate
module load HMMER/3.1b2-foss-2016b
hmmscan --cpu 2 --tblout TrinotatePFAM7.out --domtblout TrinotateDomainsPFAM7.out Pfam-A.hmm /lustre1/mdh72859/Denovo_Assembly/Trinotate/Trinity_Assembly.Trinity.fasta.transdecoder_dir/myAAseq140000.fa

#PBS -S /bin/bash
#PBS -N HMMER160_180k.sh
#PBS -q batch
#PBS -l nodes=1:ppn=2:AMD
#PBS -l mem=40gb
#PBS -l walltime=480:00:00

cd /lustre1/mdh72859/Denovo_Assembly/Trinotate
module load HMMER/3.1b2-foss-2016b
hmmscan --cpu 2 --tblout TrinotatePFAM8.out --domtblout TrinotateDomainsPFAM8.out Pfam-A.hmm /lustre1/mdh72859/Denovo_Assembly/Trinotate/Trinity_Assembly.Trinity.fasta.transdecoder_dir/myAAseq160000.fa

#PBS -S /bin/bash
#PBS -N HMMER180k.sh
#PBS -q batch
#PBS -l nodes=1:ppn=2:AMD
#PBS -l mem=40gb
#PBS -l walltime=480:00:00

cd /lustre1/mdh72859/Denovo_Assembly/Trinotate
module load HMMER/3.1b2-foss-2016b
hmmscan --cpu 2 --tblout TrinotatePFAM9.out --domtblout TrinotateDomainsPFAM9.out Pfam-A.hmm /lustre1/mdh72859/Denovo_Assembly/Trinotate/Trinity_Assembly.Trinity.fasta.transdecoder_dir/myAAseq180000.fa






