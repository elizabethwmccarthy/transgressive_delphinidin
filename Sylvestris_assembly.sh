#This script was written by Jacob B. Landis and Elizabeth W. McCarthy to investigate the evolution of flavonoid biosynthetic pathway (FBP) genes in 
#Nicotiana section Repandae allotetraploids and their diploid progenitors and was included in the manuscript entitled ‘Differential expression of 
#flavonoid biosynthetic pathway genes drives the production of transgressive pigments in Nicotiana section Repandae allotetraploids’ submitted to 
#the American Journal of Botany in 2025.


#include paired data (left and right), separated by a comma
#Trinity --seqType fq --left cleaned_reads/Sylv2_60_R1.fastq.gz,cleaned_reads/Sylv2_85_R1.fastq.gz,cleaned_reads/Sylv2_95_R1.fastq.gz,cleaned_reads/Sylv3_leaf_R1.fastq.gz,cleaned_reads/Sylv6_60_R1.fastq.gz,cleaned_reads/Sylv6_85_R1.fastq.gz,cleaned_reads/Sylv6_95_R1.fastq.gz,cleaned_reads/Sylv6_R1.fastq.gz,cleaned_reads/Sylv7_60_R1.fastq.gz,cleaned_reads/Sylv7_85_R1.fastq.gz,cleaned_reads/Sylv7_95_R1.fastq.gz,cleaned_reads/Sylv7_leaf_R1.fastq.gz --right cleaned_reads/Sylv2_60_R2.fastq.gz,cleaned_reads/Sylv2_85_R2.fastq.gz,cleaned_reads/Sylv2_95_R2.fastq.gz,cleaned_reads/Sylv3_leaf_R2.fastq.gz,cleaned_reads/Sylv6_60_R2.fastq.gz,cleaned_reads/Sylv6_85_R2.fastq.gz,cleaned_reads/Sylv6_95_R2.fastq.gz,cleaned_reads/Sylv6_R2.fastq.gz,cleaned_reads/Sylv7_60_R2.fastq.gz,cleaned_reads/Sylv7_85_R2.fastq.gz,cleaned_reads/Sylv7_95_R2.fastq.gz,cleaned_reads/Sylv7_leaf_R2.fastq.gz --long_reads long_reads/Nsylvestris_all_porechop_corrected.fasta --max_memory 800G --CPU 20 --min_contig_length 500 --no_salmon --output /home/jbl256/Nicotiana/Obtuse/Sylvestris_trinity --full_cleanup

#include paired data (left and right), separated by a comma
Trinity --seqType fq --left cleaned_reads/Sylv2_60_R1.fastq.gz,cleaned_reads/Sylv2_85_R1.fastq.gz,cleaned_reads/Sylv2_95_R1.fastq.gz,cleaned_reads/Sylv3_leaf_R1.fastq.gz,cleaned_reads/Sylv6_60_R1.fastq.gz,cleaned_reads/Sylv6_85_R1.fastq.gz,cleaned_reads/Sylv6_95_R1.fastq.gz,cleaned_reads/Sylv6_R1.fastq.gz,cleaned_reads/Sylv7_60_R1.fastq.gz,cleaned_reads/Sylv7_85_R1.fastq.gz,cleaned_reads/Sylv7_95_R1.fastq.gz,cleaned_reads/Sylv7_leaf_R1.fastq.gz --right cleaned_reads/Sylv2_60_R2.fastq.gz,cleaned_reads/Sylv2_85_R2.fastq.gz,cleaned_reads/Sylv2_95_R2.fastq.gz,cleaned_reads/Sylv3_leaf_R2.fastq.gz,cleaned_reads/Sylv6_60_R2.fastq.gz,cleaned_reads/Sylv6_85_R2.fastq.gz,cleaned_reads/Sylv6_95_R2.fastq.gz,cleaned_reads/Sylv6_R2.fastq.gz,cleaned_reads/Sylv7_60_R2.fastq.gz,cleaned_reads/Sylv7_85_R2.fastq.gz,cleaned_reads/Sylv7_95_R2.fastq.gz,cleaned_reads/Sylv7_leaf_R2.fastq.gz --long_reads long_reads/Nsylvestris_all_porechop_corrected.fasta --max_memory 800G --jaccard_clip --CPU 20 --min_contig_length 500 --no_salmon --output /home/jbl256/Nicotiana/Sylv/Sylvestris_trinity_run2 --full_cleanup

#determine quality of assemblies
#/opt/linux/centos/7.x/x86_64/pkgs/trinity-rnaseq/2.8.4/util/TrinityStats.pl trinity_Panax_notoginseng.Trinity.fasta > Panax_notoginseng_assembly.metrics

#super transcript run 1
#Analysis/SuperTranscripts/Trinity_gene_splice_modeler.py --trinity_fasta Sylvestris_trinity.Trinity.fasta --incl_malign

Analysis/SuperTranscripts/Trinity_gene_splice_modeler.py --trinity_fasta Sylvestris_trinity_run2.Trinity.fasta

#stats
util/TrinityStats.pl Sylvestris_run2_supertrans_genes.fasta

################################
## Counts of transcripts, etc.
################################
Total trinity 'genes':	61877
Total trinity transcripts:	61877
Percent GC: 38.19

########################################
Stats based on ALL transcript contigs:
########################################

	Contig N10: 6689
	Contig N20: 5126
	Contig N30: 4104
	Contig N40: 3290
	Contig N50: 2578

	Median contig length: 1018
	Average contig: 1685.28
	Total assembled bases: 104280256

