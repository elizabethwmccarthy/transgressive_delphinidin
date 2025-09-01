#This script was written by Jacob B. Landis and Elizabeth W. McCarthy to investigate the evolution of flavonoid biosynthetic pathway (FBP) genes in 
#Nicotiana section Repandae allotetraploids and their diploid progenitors and was included in the manuscript entitled ‘Differential expression of 
#flavonoid biosynthetic pathway genes drives the production of transgressive pigments in Nicotiana section Repandae allotetraploids’ submitted to 
#the American Journal of Botany in 2025.

###################################################################################################################
# Repa9
###################################################################################################################
mkdir Repa9
cd Repa9

fasterq-dump --split-3 --threads 12 SRR28342908

fasterq-dump --split-3 --threads 12 SRR28342897

fasterq-dump --split-3 --threads 12 SRR28342891

cat *_1.fastq > Repa9.R1.fastq

cat *_2.fastq > Repa9.R2.fastq

fastp -i Repa9.R1.fastq -o Repa9_clean.R1.fastq.gz -I Repa9.R2.fastq -O Repa9_clean.R2.fastq.gz -z 4 -q 20 --trim_poly_g --length_required 75 --thread 16

rm *.fastq
cd ..
###################################################################################################################



###################################################################################################################
# Stock7
###################################################################################################################
mkdir Stock7
cd Stock7

fasterq-dump --split-3 --threads 12 SRR28342918

fasterq-dump --split-3 --threads 12 SRR28342917

fasterq-dump --split-3 --threads 12 SRR28342916

cat *_1.fastq > Stock7.R1.fastq

cat *_2.fastq > Stock7.R2.fastq

fastp -i Stock7.R1.fastq -o Stock7_clean.R1.fastq.gz -I Stock7.R2.fastq -O Stock7_clean.R2.fastq.gz -z 4 -q 20 --trim_poly_g --length_required 75 --thread 16
rm *.fastq
cd ..
###################################################################################################################



###################################################################################################################
# Stock8
###################################################################################################################
mkdir Stock8
cd Stock8

fasterq-dump --split-3 --threads 12 SRR28342915

fasterq-dump --split-3 --threads 12 SRR28342914

fasterq-dump --split-3 --threads 12 SRR28342913

cat *_1.fastq > Stock8.R1.fastq

cat *_2.fastq > Stock8.R2.fastq

fastp -i Stock8.R1.fastq -o Stock8_clean.R1.fastq.gz -I Stock8.R2.fastq -O Stock8_clean.R2.fastq.gz -z 4 -q 20 --trim_poly_g --length_required 75 --thread 16
rm *.fastq
cd ..
###################################################################################################################



###################################################################################################################
# Stock9
###################################################################################################################
mkdir Stock9
cd Stock9

fasterq-dump --split-3 --threads 12 SRR28342912

fasterq-dump --split-3 --threads 12 SRR28342911

fasterq-dump --split-3 --threads 12 SRR28342910

cat *_1.fastq > Stock9.R1.fastq

cat *_2.fastq > Stock9.R2.fastq

fastp -i Stock9.R1.fastq -o Stock9_clean.R1.fastq.gz -I Stock9.R2.fastq -O Stock9_clean.R2.fastq.gz -z 4 -q 20 --trim_poly_g --length_required 75 --thread 16
rm *.fastq
cd ..
###################################################################################################################



###################################################################################################################
# Sylv2
###################################################################################################################
mkdir Sylv2
cd Sylv2

fasterq-dump --split-3 --threads 12 SRR28342884

fasterq-dump --split-3 --threads 12 SRR28342883

fasterq-dump --split-3 --threads 12 SRR28342882

cat *_1.fastq > Sylv2.R1.fastq

cat *_2.fastq > Sylv2.R2.fastq

fastp -i Sylv2.R1.fastq -o Sylv2_clean.R1.fastq.gz -I Sylv2.R2.fastq -O Sylv2_clean.R2.fastq.gz -z 4 -q 20 --trim_poly_g --length_required 75 --thread 16
rm *.fastq
cd ..
###################################################################################################################



###################################################################################################################
# Sylv6
###################################################################################################################
mkdir Sylv6
cd Sylv6

fasterq-dump --split-3 --threads 12 SRR28342881

fasterq-dump --split-3 --threads 12 SRR28342880

fasterq-dump --split-3 --threads 12 SRR28342879

cat *_1.fastq > Sylv6.R1.fastq

cat *_2.fastq > Sylv6.R2.fastq

fastp -i Sylv6.R1.fastq -o Sylv6_clean.R1.fastq.gz -I Sylv6.R2.fastq -O Sylv6_clean.R2.fastq.gz -z 4 -q 20 --trim_poly_g --length_required 75 --thread 16
rm *.fastq
cd ..
###################################################################################################################



###################################################################################################################
# Sylv7
###################################################################################################################
mkdir Sylv7
cd Sylv7

fasterq-dump --split-3 --threads 12 SRR28342878

fasterq-dump --split-3 --threads 12 SRR28342877

fasterq-dump --split-3 --threads 12 SRR28342876

cat *_1.fastq > Sylv7.R1.fastq

cat *_2.fastq > Sylv7.R2.fastq

fastp -i Sylv7.R1.fastq -o Sylv7_clean.R1.fastq.gz -I Sylv7.R2.fastq -O Sylv7_clean.R2.fastq.gz -z 4 -q 20 --trim_poly_g --length_required 75 --thread 16
rm *.fastq
cd ..
###################################################################################################################



###################################################################################################################
# Obtus2
###################################################################################################################
mkdir Obtus2
cd Obtus2

fasterq-dump --split-3 --threads 12 SRR28342906

fasterq-dump --split-3 --threads 12 SRR28342905

fasterq-dump --split-3 --threads 12 SRR28342904

cat *_1.fastq > Obtus2.R1.fastq

cat *_2.fastq > Obtus2.R2.fastq

fastp -i Obtus2.R1.fastq -o Obtus2_clean.R1.fastq.gz -I Obtus2.R2.fastq -O Obtus2_clean.R2.fastq.gz -z 4 -q 20 --trim_poly_g --length_required 75 --thread 16
rm *.fastq
cd ..
###################################################################################################################



###################################################################################################################
# Obtus3
###################################################################################################################
mkdir Obtus3
cd Obtus3

fasterq-dump --split-3 --threads 12 SRR28342903

fasterq-dump --split-3 --threads 12 SRR28342902

fasterq-dump --split-3 --threads 12 SRR28342901

cat *_1.fastq > Obtus3.R1.fastq

cat *_2.fastq > Obtus3.R2.fastq

fastp -i Obtus3.R1.fastq -o Obtus3_clean.R1.fastq.gz -I Obtus3.R2.fastq -O Obtus3_clean.R2.fastq.gz -z 4 -q 20 --trim_poly_g --length_required 75 --thread 16
rm *.fastq
cd ..
###################################################################################################################



###################################################################################################################
# Obtus8
###################################################################################################################
mkdir Obtus8
cd Obtus8

fasterq-dump --split-3 --threads 12 SRR28342900

fasterq-dump --split-3 --threads 12 SRR28342899

fasterq-dump --split-3 --threads 12 SRR28342898

cat *_1.fastq > Obtus8.R1.fastq

cat *_2.fastq > Obtus8.R2.fastq

fastp -i Obtus8.R1.fastq -o Obtus8_clean.R1.fastq.gz -I Obtus8.R2.fastq -O Obtus8_clean.R2.fastq.gz -z 4 -q 20 --trim_poly_g --length_required 75 --thread 16
rm *.fastq
cd ..
###################################################################################################################


