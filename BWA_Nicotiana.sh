#This script was written by Jacob B. Landis and Elizabeth W. McCarthy to investigate the evolution of flavonoid biosynthetic pathway (FBP) genes in 
#Nicotiana section Repandae allotetraploids and their diploid progenitors and was included in the manuscript entitled ‘Differential expression of 
#flavonoid biosynthetic pathway genes drives the production of transgressive pigments in Nicotiana section Repandae allotetraploids’ submitted to 
#the American Journal of Botany in 2025.


mkdir bam_files
mkdir sorted_bam_files

#reference file
GENOME=anth_genes_N_sylv_N_obtus_TW143.fasta


#to index a fasta file
bwa-mem2 index anth_genes_N_sylv_N_obtus_TW143.fasta

#Read group information starts with "@RG
#ID: is unique identifier of the samples, for now doing the sample name and the barcode info
#SM: is the sample name
#PL: is the sequencing equipment, in almost all cases this will be Illumina
#PU: is the run identifier, the lane, followed by the specific barcode of the sample
#LB: is the library count

#example for one sample at a time
#bwa-mem2 mem -t 6 -R "@RG\tID:Sp100_SRR7548958_reseq\tSM:Sp100_SRR7548958\tPL:IlluminaSRA\tPU:HTNMKDSXX\tLB:duckweed_reseq" /local/workdir/jbl256/PLSCI6940_class_project/Sesamum_indicum_jbl/reference_genome/GCA_000512975.1_S_indicum_v1.0_genomic.fasta cleaned_reads/Spirodela_polyrhiza_Sp100_SRR7548958.R1.fastq.gz cleaned_reads/Spirodela_polyrhiza_Sp100_SRR7548958.R2.fastq.gz > SAM_files/Spirodela_polyrhiza_Sp100_SRR7548958.sam

#loop; use this for the lab server
for file in clean_reads/*R1.fastq.gz
do
	name=`basename $file .R1.fastq.gz`
	echo "mapping $name to reference"
	forward=$name".R1.fastq.gz"
	reverse=$name".R2.fastq.gz"
	design=`basename $file .R1.fastq.gz`
	#perform the alignment
	bwa-mem2 mem -t 32 -R "@RG\tID:$design.rna\tSM:$design\tPL:transcriptomes\tPU:HTNMKDSXX\tLB:RNASeq_Repa" $GENOME clean_reads/$forward clean_reads/$reverse | samtools view -S -b --threads 32 > bam_files/$name.bam
done


#Sort BAM for SNP calling
for file in bam_files/*.bam
do
	echo "Sort $file"
	name=`basename $file .bam`
	readid=$name
	samtools sort --threads 32 -o sorted_bam_files/$readid.bam $file
	rm $file
done


#index bam files before calling SNPs
for file in sorted_bam_files/*.bam
do
	echo "Indexing $file "
	name=`basename $file .bam`
	samtools index $file
done

