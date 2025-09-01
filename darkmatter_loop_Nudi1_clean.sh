#This script was written by Jacob B. Landis and Elizabeth W. McCarthy to investigate the evolution of flavonoid biosynthetic pathway (FBP) genes in 
#Nicotiana section Repandae allotetraploids and their diploid progenitors and was included in the manuscript entitled ‘Differential expression of 
#flavonoid biosynthetic pathway genes drives the production of transgressive pigments in Nicotiana section Repandae allotetraploids’ submitted to 
#the American Journal of Botany in 2025.

#tell computer where to find bcftools (because had to download it manually)
export PATH=/Users/mccarthylab/Documents/Installed_programs/bcftools-1.15.1/bin:$PATH
export PATH=/Users/mccarthylab/Documents/Installed_programs/samtools-1.15.1/bin:$PATH
export PATH=/Users/mccarthylab/Documents/Installed_programs/ivar-1.3.1/bin:$PATH

#make a consensus file for every loci
for file in /Users/mccarthylab/Documents/Repa_FBP_biorep_mapping_Aug2025/sorted_bam_files/Nudi1_clean/*.bam
do
	echo "Make consensus $file "
	name=`basename $file .bam`
	make-consensus.py --reference /Users/mccarthylab/Documents/Repa_FBP_biorep_mapping_Aug2025/sorted_bam_files/Nudi1_clean/anth_genes_N_sylv_N_obtus_TW143.fasta --bam $file > $name.fasta --id Nudi1_clean --ivar 
done
