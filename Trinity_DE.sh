#This script was written by Jacob B. Landis and Elizabeth W. McCarthy to investigate the evolution of flavonoid biosynthetic pathway (FBP) genes in 
#Nicotiana section Repandae allotetraploids and their diploid progenitors and was included in the manuscript entitled ‘Differential expression of 
#flavonoid biosynthetic pathway genes drives the production of transgressive pigments in Nicotiana section Repandae allotetraploids’ submitted to 
#the American Journal of Botany in 2025.


#prep for alignment
/home/jbl256/Installed_programs/trinityrnaseq-v2.15.0/util/align_and_estimate_abundance.pl --transcripts Nicotiana_sylv_obtus_insilico_supertrans_transcriptome.fasta --est_method RSEM --aln_method bowtie2 --gene_trans_map Nicotiana_sylv_obtus_insilico_supertrans_transcriptome.fasta.gene_trans_map --prep_reference

#abundance estimation
nohup /home/jbl256/Installed_programs/trinityrnaseq-v2.15.0/util/align_and_estimate_abundance.pl --transcripts Nicotiana_sylv_obtus_insilico_supertrans_transcriptome.fasta --seqType fq --samples_file 60_samples.txt --est_method RSEM --aln_method bowtie2 --thread_count 12 --gene_trans_map Nicotiana_sylv_obtus_insilico_supertrans_transcriptome.fasta.gene_trans_map &  

#generate counts matrix
/home/jbl256/Installed_programs/trinityrnaseq-v2.15.0/util/abundance_estimates_to_matrix.pl --est_method RSEM --gene_trans_map Nicotiana_sylv_obtus_insilico_supertrans_transcriptome.fasta.gene_trans_map --quant_files target_files.txt --name_sample_by_basedir

#DE analysis with isoform counts as done before
#/home/jbl256/Installed_programs/trinityrnaseq-v2.15.0/Analysis/DifferentialExpression/run_DE_analysis.pl --matrix RSEM.isoform.counts.matrix --method voom --samples_file samples_described.txt
#clustering DE genes
#/home/jbl256/Installed_programs/trinityrnaseq-v2.15.0/Analysis/DifferentialExpression/analyze_diff_expr.pl --matrix ../RSEM.isoform.counts.matrix -P 0.05 -C 2 --samples ../samples_described.txt --order_columns_by_samples_file --max_genes_clus 60000

#DE analysis with just gene counts
/home/jbl256/Installed_programs/trinityrnaseq-v2.15.0/Analysis/DifferentialExpression/run_DE_analysis.pl --matrix RSEM.gene.counts.matrix --method voom --samples_file samples_described.txt

#DE analysis with normalized gene counts; not correct should use just the gene counts
#/home/jbl256/Installed_programs/trinityrnaseq-v2.15.0/Analysis/DifferentialExpression/run_DE_analysis.pl --matrix RSEM.gene.TMM.EXPR.matrix --method voom --samples_file samples_described.txt

#PCA plot
/home/jbl256/Installed_programs/trinityrnaseq-v2.15.0/Analysis/DifferentialExpression/PtR --matrix RSEM.gene.TMM.EXPR.matrix -s samples_described.txt --min_rowSums 10 --log2 --CPM --center_rows --prin_comp 3 

#this will change each time
#cd voom.2280294.dir

#clustering DE genes
#/home/jbl256/Installed_programs/trinityrnaseq-v2.15.0/Analysis/DifferentialExpression/analyze_diff_expr.pl --matrix ../RSEM.gene.TMM.EXPR.matrix -P 0.05 -C 2 --samples ../samples_described.txt --order_columns_by_samples_file --max_genes_clus 60000

#partitioning into expression clusters
#/home/jbl256/Installed_programs/trinityrnaseq-v2.15.0/Analysis/DifferentialExpression/define_clusters_by_cutting_tree.pl -R diffExpr.P0.05_C2.matrix.RData --Ptree 60 --lexical_column_ordering 
