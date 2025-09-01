# transgressive_delphinidin

######################################################################################################
#################### 	reference transcriptome assemblies    		##################################
######################################################################################################

The two progenitor transcriptomes were assembled using the "Obtuse_assembly.sh" and "Sylvestris_assembly.sh"

Two assembly runs were tried, the first without and the second with the "jaccard_clip" option in Trinity. The latter was used as the input for making supertranscript contigs

Stats were inferred to help determine the quality of the assemblies

The two progenitors were then concatenated together to make the in silico allotetraploid reference

######################################################################################################
#################### 	mapping and differential gene expression  	##################################
######################################################################################################

All of the raw reads, which can be obtained from the SRA as shown in "Nicotiana_download_and_process.sh", were cleaned with "fastp.sh".

Cleaned reads were mapped to the in silico allotetraploid reference using bowtie2 with the script "Trinity_DE.sh". This script was modified for different comparisons of the different stages.
The script goes through the mapping steps and the differential expression analysis of genes with Voom to create the standard output files in the Trinity pipeline.

######################################################################################################
#################### 	consensus calling of FBP genes 				##################################
######################################################################################################

Consensus calling of candidates genes was done by mapping the cleaned reads to the FBP candidate gene fasta reference using "BWA_Nicotiana.sh"

After sorted BAM files were created, these were split per locus using bamtools using the command "bamtools split -n $INPUT_File -reference" to create a new BAM file for gene separately to be run with darkmatter.
This was necessary because in a multi-contig file, darkmatter only processes the first contig.

The split BAM files for each locus for a given accession were processed with scripts resembling "darkmatter_loop_Nudi1_clean.sh", which were changed for each accession. This created the consensus sequence, in fasta format, for each locus.

For each FBP gene (e.g., sANS, the N. sylvestris ANS homeolog, or oFLS, the N. obtusifolia FLS homeolog), all sequences for each biological replicate were concatenated into a single fasta file using the command “cat */*genename.fasta > allgenename.fasta” and these fasta files were examined for premature stop codons, frameshift mutations, and allelic variation within homeologs. Sequence names in these fasta files have an abbreviated species names followed by the biological replicate number. The abbreviated species names are as follows: Sylv = N. sylvestris, Obtus =N. obtusifolia, Nudi = N. nudicaulis, Repa = N. repanda, Stock = N. stocktonii. These fasta files can be found on Figshare at https://doi.org/10.6084/m9.figshare.30019699.

######################################################################################################
#################### 	R scripts for figures 				##################################
######################################################################################################

The file “Repandae_transgressive_delphinidin_plot_code.R” contains all of the R code used to create Figures 4, 5, 6, and 7 and Appendix S1, S6, and S7.
