#This script was written by Jacob B. Landis and Elizabeth W. McCarthy to investigate the evolution of flavonoid biosynthetic pathway (FBP) genes in 
#Nicotiana section Repandae allotetraploids and their diploid progenitors and was included in the manuscript entitled ‘Differential expression of 
#flavonoid biosynthetic pathway genes drives the production of transgressive pigments in Nicotiana section Repandae allotetraploids’ submitted to 
#the American Journal of Botany in 2025.


#include paired data (left and right), separated by a comma
#Trinity --seqType fq --left cleaned_reads/Obtus13_leaf_R1.fastq.gz,cleaned_reads/Obtus2_60_R1.fastq.gz,cleaned_reads/Obtus2_85_R1.fastq.gz,cleaned_reads/Obtus2_95_R1.fastq.gz,cleaned_reads/Obtus3_60_R1.fastq.gz,cleaned_reads/Obtus3_85_R1.fastq.gz,cleaned_reads/Obtus3_95_R1.fastq.gz,cleaned_reads/Obtus7_leaf_R1.fastq.gz,cleaned_reads/Obtus8_60_R1.fastq.gz,cleaned_reads/Obtus8_85_R1.fastq.gz,cleaned_reads/Obtus8_95_R1.fastq.gz,cleaned_reads/Obtus8_b_R1.fastq.gz,cleaned_reads/Obtus13_leaf_R1.fastq.gz --right cleaned_reads/Obtus13_leaf_R2.fastq.gz,cleaned_reads/Obtus2_60_R2.fastq.gz,cleaned_reads/Obtus2_85_R2.fastq.gz,cleaned_reads/Obtus2_95_R2.fastq.gz,cleaned_reads/Obtus3_60_R2.fastq.gz,cleaned_reads/Obtus3_85_R2.fastq.gz,cleaned_reads/Obtus3_95_R2.fastq.gz,cleaned_reads/Obtus7_leaf_R2.fastq.gz,cleaned_reads/Obtus8_60_R2.fastq.gz,cleaned_reads/Obtus8_85_R2.fastq.gz,cleaned_reads/Obtus8_95_R2.fastq.gz,cleaned_reads/Obtus8_b_R2.fastq.gz,cleaned_reads/Obtus13_leaf_R2.fastq.gz --max_memory 800G --CPU 20 --min_contig_length 500 --no_salmon --output /home/jbl256/Nicotiana/Obtuse/Obtuse_trinity --full_cleanup

#run 2 with the jaccard clip option
Trinity --seqType fq --samples_file samples_list.txt --jaccard_clip --max_memory 800G --CPU 20 --min_contig_length 500 --no_salmon --output /home/jbl256/Nicotiana/Obtuse/Obtuse_trinity_run2 --full_cleanup

#determine quality of assemblies
#/opt/linux/centos/7.x/x86_64/pkgs/trinity-rnaseq/2.8.4/util/TrinityStats.pl trinity_Panax_notoginseng.Trinity.fasta > Panax_notoginseng_assembly.metrics

#generate Supertranscript
#Analysis/SuperTranscripts/Trinity_gene_splice_modeler.py --trinity_fasta Obtuse_trinity.Trinity.fasta --incl_malign

#generate Supertranscript
Analysis/SuperTranscripts/Trinity_gene_splice_modeler.py --trinity_fasta Obtuse_trinity_run2.Trinity.fasta

#stats
util/TrinityStats.pl Obtuse2_trinity_genes.fasta

################################
## Counts of transcripts, etc.
################################
Total trinity 'genes':	50299
Total trinity transcripts:	50299
Percent GC: 38.46

########################################
Stats based on ALL transcript contigs:
########################################

	Contig N10: 6985
	Contig N20: 5390
	Contig N30: 4403
	Contig N40: 3599
	Contig N50: 2903

	Median contig length: 1100
	Average contig: 1834.82
	Total assembled bases: 92289732
