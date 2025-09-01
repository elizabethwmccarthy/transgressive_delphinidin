#This script was written by Jacob B. Landis and Elizabeth W. McCarthy to investigate the evolution of flavonoid biosynthetic pathway (FBP) genes in 
#Nicotiana section Repandae allotetraploids and their diploid progenitors and was included in the manuscript entitled ‘Differential expression of 
#flavonoid biosynthetic pathway genes drives the production of transgressive pigments in Nicotiana section Repandae allotetraploids’ submitted to 
#the American Journal of Botany in 2025.

mkdir cleaned_reads

###Obtus13_leaf
fastp -i /data/jbl256/Nicotiana/Rep_DE_project/raw_data/NGS11029/NGS11029_A01062_0046_S_000807006_S59_L001_R1_001.fastq.gz -o cleaned_reads/Obtus13_leaf_L001_R1.fastq -I /data/jbl256/Nicotiana/Rep_DE_project/raw_data/NGS11029/NGS11029_A01062_0046_S_000807006_S59_L001_R2_001.fastq.gz -O cleaned_reads/Obtus13_leaf_L001_R2.fastq -q 20 --trim_poly_g --length_required 75 --thread 4

fastp -i /data/jbl256/Nicotiana/Rep_DE_project/raw_data/NGS11029/NGS11029_A01062_0046_S_000807006_S59_L002_R1_001.fastq.gz -o cleaned_reads/Obtus13_leaf_L002_R1.fastq -I /data/jbl256/Nicotiana/Rep_DE_project/raw_data/NGS11029/NGS11029_A01062_0046_S_000807006_S59_L002_R2_001.fastq.gz -O cleaned_reads/Obtus13_leaf_L002_R2.fastq -q 20 --trim_poly_g --length_required 75 --thread 4

cat cleaned_reads/Obtus13_leaf_L001_R1.fastq cleaned_reads/Obtus13_leaf_L002_R1.fastq > cleaned_reads/Obtus13_leaf_R1.fastq

gzip cleaned_reads/Obtus13_leaf_R1.fastq

cat cleaned_reads/Obtus13_leaf_L001_R2.fastq cleaned_reads/Obtus13_leaf_L002_R2.fastq > cleaned_reads/Obtus13_leaf_R2.fastq

gzip cleaned_reads/Obtus13_leaf_R2.fastq

rm cleaned_reads/*.fastq

###Obtus2_85
fastp -i /data/jbl256/Nicotiana/Rep_DE_project/raw_data/NGS11013/NGS11013_A01062_0046_S_000806990_S57_L001_R1_001.fastq.gz -o cleaned_reads/Obtus2_85_L001_R1.fastq -I /data/jbl256/Nicotiana/Rep_DE_project/raw_data/NGS11013/NGS11013_A01062_0046_S_000806990_S57_L001_R2_001.fastq.gz -O cleaned_reads/Obtus2_85_L001_R2.fastq -q 20 --trim_poly_g --length_required 75 --thread 4

fastp -i /data/jbl256/Nicotiana/Rep_DE_project/raw_data/NGS11013/NGS11013_A01062_0046_S_000806990_S57_L002_R1_001.fastq.gz -o cleaned_reads/Obtus2_85_L002_R1.fastq -I /data/jbl256/Nicotiana/Rep_DE_project/raw_data/NGS11013/NGS11013_A01062_0046_S_000806990_S57_L002_R2_001.fastq.gz -O cleaned_reads/Obtus2_85_L002_R2.fastq -q 20 --trim_poly_g --length_required 75 --thread 4

cat cleaned_reads/Obtus2_85_L001_R1.fastq cleaned_reads/Obtus2_85_L002_R1.fastq > cleaned_reads/Obtus2_85_R1.fastq

gzip cleaned_reads/Obtus2_85_R1.fastq

cat cleaned_reads/Obtus2_85_L001_R2.fastq cleaned_reads/Obtus2_85_L002_R2.fastq > cleaned_reads/Obtus2_85_R2.fastq

gzip cleaned_reads/Obtus2_85_R2.fastq

rm cleaned_reads/*.fastq

###Obtus2_95
fastp -i /data/jbl256/Nicotiana/Rep_DE_project/raw_data/NGS11014/NGS11014_A01062_0046_S_000806991_S67_L001_R1_001.fastq.gz -o cleaned_reads/Obtus2_95_L001_R1.fastq -I /data/jbl256/Nicotiana/Rep_DE_project/raw_data/NGS11014/NGS11014_A01062_0046_S_000806991_S67_L001_R2_001.fastq.gz -O cleaned_reads/Obtus2_95_L001_R2.fastq -q 20 --trim_poly_g --length_required 75 --thread 4

fastp -i /data/jbl256/Nicotiana/Rep_DE_project/raw_data/NGS11014/NGS11014_A01062_0046_S_000806991_S67_L002_R1_001.fastq.gz -o cleaned_reads/Obtus2_95_L002_R1.fastq -I /data/jbl256/Nicotiana/Rep_DE_project/raw_data/NGS11014/NGS11014_A01062_0046_S_000806991_S67_L002_R2_001.fastq.gz -O cleaned_reads/Obtus2_95_L002_R2.fastq -q 20 --trim_poly_g --length_required 75 --thread 4

cat cleaned_reads/Obtus2_95_L001_R1.fastq cleaned_reads/Obtus2_95_L002_R1.fastq > cleaned_reads/Obtus2_95_R1.fastq

gzip cleaned_reads/Obtus2_95_R1.fastq

cat cleaned_reads/Obtus2_95_L001_R2.fastq cleaned_reads/Obtus2_95_L002_R2.fastq > cleaned_reads/Obtus2_95_R2.fastq

gzip cleaned_reads/Obtus2_95_R2.fastq

rm cleaned_reads/*.fastq

###Obtus3_60
fastp -i /data/jbl256/Nicotiana/Rep_DE_project/raw_data/NGS11015/NGS11015_A01062_0046_S_000806992_S77_L001_R1_001.fastq.gz -o cleaned_reads/Obtus3_60_L001_R1.fastq -I /data/jbl256/Nicotiana/Rep_DE_project/raw_data/NGS11015/NGS11015_A01062_0046_S_000806992_S77_L001_R2_001.fastq.gz -O cleaned_reads/Obtus3_60_L001_R2.fastq -q 20 --trim_poly_g --length_required 75 --thread 4

fastp -i /data/jbl256/Nicotiana/Rep_DE_project/raw_data/NGS11015/NGS11015_A01062_0046_S_000806992_S77_L002_R1_001.fastq.gz -o cleaned_reads/Obtus3_60_L002_R1.fastq -I /data/jbl256/Nicotiana/Rep_DE_project/raw_data/NGS11015/NGS11015_A01062_0046_S_000806992_S77_L002_R2_001.fastq.gz -O cleaned_reads/Obtus3_60_L002_R2.fastq -q 20 --trim_poly_g --length_required 75 --thread 4

cat cleaned_reads/Obtus3_60_L001_R1.fastq cleaned_reads/Obtus3_60_L002_R1.fastq > cleaned_reads/Obtus3_60_R1.fastq

gzip cleaned_reads/Obtus3_60_R1.fastq

cat cleaned_reads/Obtus3_60_L001_R2.fastq cleaned_reads/Obtus3_60_L002_R2.fastq > cleaned_reads/Obtus3_60_R2.fastq

gzip cleaned_reads/Obtus3_60_R2.fastq

rm cleaned_reads/*.fastq

###Obtus3_85
fastp -i /data/jbl256/Nicotiana/Rep_DE_project/raw_data/NGS11016/NGS11016_A01062_0046_S_000806993_S7_L001_R1_001.fastq.gz -o cleaned_reads/Obtus3_85_L001_R1.fastq -I /data/jbl256/Nicotiana/Rep_DE_project/raw_data/NGS11016/NGS11016_A01062_0046_S_000806993_S7_L001_R2_001.fastq.gz -O cleaned_reads/Obtus3_85_L001_R2.fastq -q 20 --trim_poly_g --length_required 75 --thread 4

fastp -i /data/jbl256/Nicotiana/Rep_DE_project/raw_data/NGS11016/NGS11016_A01062_0046_S_000806993_S7_L002_R1_001.fastq.gz -o cleaned_reads/Obtus3_85_L002_R1.fastq -I /data/jbl256/Nicotiana/Rep_DE_project/raw_data/NGS11016/NGS11016_A01062_0046_S_000806993_S7_L002_R2_001.fastq.gz -O cleaned_reads/Obtus3_85_L002_R2.fastq -q 20 --trim_poly_g --length_required 75 --thread 4

cat cleaned_reads/Obtus3_85_L001_R1.fastq cleaned_reads/Obtus3_85_L002_R1.fastq > cleaned_reads/Obtus3_85_R1.fastq

gzip cleaned_reads/Obtus3_85_R1.fastq

cat cleaned_reads/Obtus3_85_L001_R2.fastq cleaned_reads/Obtus3_85_L002_R2.fastq > cleaned_reads/Obtus3_85_R2.fastq

gzip cleaned_reads/Obtus3_85_R2.fastq

rm cleaned_reads/*.fastq

###Obtus3_95
fastp -i /data/jbl256/Nicotiana/Rep_DE_project/raw_data/NGS11017/NGS11017_A01062_0046_S_000806994_S18_L001_R1_001.fastq.gz -o cleaned_reads/Obtus3_95_L001_R1.fastq -I /data/jbl256/Nicotiana/Rep_DE_project/raw_data/NGS11017/NGS11017_A01062_0046_S_000806994_S18_L001_R2_001.fastq.gz -O cleaned_reads/Obtus3_95_L001_R2.fastq -q 20 --trim_poly_g --length_required 75 --thread 4

fastp -i /data/jbl256/Nicotiana/Rep_DE_project/raw_data/NGS11017/NGS11017_A01062_0046_S_000806994_S18_L002_R1_001.fastq.gz -o cleaned_reads/Obtus3_95_L002_R1.fastq -I /data/jbl256/Nicotiana/Rep_DE_project/raw_data/NGS11017/NGS11017_A01062_0046_S_000806994_S18_L002_R2_001.fastq.gz -O cleaned_reads/Obtus3_95_L002_R2.fastq -q 20 --trim_poly_g --length_required 75 --thread 4

cat cleaned_reads/Obtus3_95_L001_R1.fastq cleaned_reads/Obtus3_95_L002_R1.fastq > cleaned_reads/Obtus3_95_R1.fastq

gzip cleaned_reads/Obtus3_95_R1.fastq

cat cleaned_reads/Obtus3_95_L001_R2.fastq cleaned_reads/Obtus3_95_L002_R2.fastq > cleaned_reads/Obtus3_95_R2.fastq

gzip cleaned_reads/Obtus3_95_R2.fastq

rm cleaned_reads/*.fastq

###Obtus7_leaf
fastp -i /data/jbl256/Nicotiana/Rep_DE_project/raw_data/NGS11023/NGS11023_A01062_0046_S_000807000_S78_L001_R1_001.fastq.gz -o cleaned_reads/Obtus7_leaf_L001_R1.fastq -I /data/jbl256/Nicotiana/Rep_DE_project/raw_data/NGS11023/NGS11023_A01062_0046_S_000807000_S78_L001_R2_001.fastq.gz -O cleaned_reads/Obtus7_leaf_L001_R2.fastq -q 20 --trim_poly_g --length_required 75 --thread 4

fastp -i /data/jbl256/Nicotiana/Rep_DE_project/raw_data/NGS11023/NGS11023_A01062_0046_S_000807000_S78_L002_R1_001.fastq.gz -o cleaned_reads/Obtus7_leaf_L002_R1.fastq -I /data/jbl256/Nicotiana/Rep_DE_project/raw_data/NGS11023/NGS11023_A01062_0046_S_000807000_S78_L002_R2_001.fastq.gz -O cleaned_reads/Obtus7_leaf_L002_R2.fastq -q 20 --trim_poly_g --length_required 75 --thread 4

cat cleaned_reads/Obtus7_leaf_L001_R1.fastq cleaned_reads/Obtus7_leaf_L002_R1.fastq > cleaned_reads/Obtus7_leaf_R1.fastq

gzip cleaned_reads/Obtus7_leaf_R1.fastq

cat cleaned_reads/Obtus7_leaf_L001_R2.fastq cleaned_reads/Obtus7_leaf_L002_R2.fastq > cleaned_reads/Obtus7_leaf_R2.fastq

gzip cleaned_reads/Obtus7_leaf_R2.fastq

rm cleaned_reads/*.fastq

###Obtus8_60
fastp -i /data/jbl256/Nicotiana/Rep_DE_project/raw_data/NGS11018/NGS11018_A01062_0046_S_000806995_S28_L001_R1_001.fastq.gz -o cleaned_reads/Obtus8_60_L001_R1.fastq -I /data/jbl256/Nicotiana/Rep_DE_project/raw_data/NGS11018/NGS11018_A01062_0046_S_000806995_S28_L001_R2_001.fastq.gz -O cleaned_reads/Obtus8_60_L001_R2.fastq -q 20 --trim_poly_g --length_required 75 --thread 4

fastp -i /data/jbl256/Nicotiana/Rep_DE_project/raw_data/NGS11018/NGS11018_A01062_0046_S_000806995_S28_L002_R1_001.fastq.gz -o cleaned_reads/Obtus8_60_L002_R1.fastq -I /data/jbl256/Nicotiana/Rep_DE_project/raw_data/NGS11018/NGS11018_A01062_0046_S_000806995_S28_L002_R2_001.fastq.gz -O cleaned_reads/Obtus8_60_L002_R2.fastq -q 20 --trim_poly_g --length_required 75 --thread 4

cat cleaned_reads/Obtus8_60_L001_R1.fastq cleaned_reads/Obtus8_60_L002_R1.fastq > cleaned_reads/Obtus8_60_R1.fastq

gzip cleaned_reads/Obtus8_60_R1.fastq

cat cleaned_reads/Obtus8_60_L001_R2.fastq cleaned_reads/Obtus8_60_L002_R2.fastq > cleaned_reads/Obtus8_60_R2.fastq

gzip cleaned_reads/Obtus8_60_R2.fastq

rm cleaned_reads/*.fastq

###Obtus8_85
fastp -i /data/jbl256/Nicotiana/Rep_DE_project/raw_data/NGS11019/NGS11019_A01062_0046_S_000806996_S38_L001_R1_001.fastq.gz -o cleaned_reads/Obtus8_85_L001_R1.fastq -I /data/jbl256/Nicotiana/Rep_DE_project/raw_data/NGS11019/NGS11019_A01062_0046_S_000806996_S38_L001_R2_001.fastq.gz -O cleaned_reads/Obtus8_85_L001_R2.fastq -q 20 --trim_poly_g --length_required 75 --thread 4

fastp -i /data/jbl256/Nicotiana/Rep_DE_project/raw_data/NGS11019/NGS11019_A01062_0046_S_000806996_S38_L002_R1_001.fastq.gz -o cleaned_reads/Obtus8_85_L002_R1.fastq -I /data/jbl256/Nicotiana/Rep_DE_project/raw_data/NGS11019/NGS11019_A01062_0046_S_000806996_S38_L002_R2_001.fastq.gz -O cleaned_reads/Obtus8_85_L002_R2.fastq -q 20 --trim_poly_g --length_required 75 --thread 4

cat cleaned_reads/Obtus8_85_L001_R1.fastq cleaned_reads/Obtus8_85_L002_R1.fastq > cleaned_reads/Obtus8_85_R1.fastq

gzip cleaned_reads/Obtus8_85_R1.fastq

cat cleaned_reads/Obtus8_85_L001_R2.fastq cleaned_reads/Obtus8_85_L002_R2.fastq > cleaned_reads/Obtus8_85_R2.fastq

gzip cleaned_reads/Obtus8_85_R2.fastq

rm cleaned_reads/*.fastq

###Sylv2_60
fastp -i /data/jbl256/Nicotiana/Rep_DE_project/raw_data/NGS12216/NGS12216_A01062_0069_S_000838629_S1_L001_R1_001.fastq.gz -o cleaned_reads/Sylv2_60_L001_R1.fastq -I /data/jbl256/Nicotiana/Rep_DE_project/raw_data/NGS12216/NGS12216_A01062_0069_S_000838629_S1_L001_R2_001.fastq.gz -O cleaned_reads/Sylv2_60_L001_R2.fastq -q 20 --trim_poly_g --length_required 75 --thread 4

fastp -i /data/jbl256/Nicotiana/Rep_DE_project/raw_data/NGS12216/NGS12216_A01062_0069_S_000838629_S1_L002_R1_001.fastq.gz -o cleaned_reads/Sylv2_60_L002_R1.fastq -I /data/jbl256/Nicotiana/Rep_DE_project/raw_data/NGS12216/NGS12216_A01062_0069_S_000838629_S1_L002_R2_001.fastq.gz -O cleaned_reads/Sylv2_60_L002_R2.fastq -q 20 --trim_poly_g --length_required 75 --thread 4

cat cleaned_reads/Sylv2_60_L001_R1.fastq cleaned_reads/Sylv2_60_L002_R1.fastq > cleaned_reads/Sylv2_60_R1.fastq

gzip cleaned_reads/Sylv2_60_R1.fastq

cat cleaned_reads/Sylv2_60_L001_R2.fastq cleaned_reads/Sylv2_60_L002_R2.fastq > cleaned_reads/Sylv2_60_R2.fastq

gzip cleaned_reads/Sylv2_60_R2.fastq

rm cleaned_reads/*.fastq

###Sylv2_85
fastp -i /data/jbl256/Nicotiana/Rep_DE_project/raw_data/NGS12217/NGS12217_A01062_0069_S_000838630_S4_L001_R1_001.fastq.gz -o cleaned_reads/Sylv2_85_L001_R1.fastq -I /data/jbl256/Nicotiana/Rep_DE_project/raw_data/NGS12217/NGS12217_A01062_0069_S_000838630_S4_L001_R2_001.fastq.gz -O cleaned_reads/Sylv2_85_L001_R2.fastq -q 20 --trim_poly_g --length_required 75 --thread 4

fastp -i /data/jbl256/Nicotiana/Rep_DE_project/raw_data/NGS12217/NGS12217_A01062_0069_S_000838630_S4_L002_R1_001.fastq.gz -o cleaned_reads/Sylv2_85_L002_R1.fastq -I /data/jbl256/Nicotiana/Rep_DE_project/raw_data/NGS12217/NGS12217_A01062_0069_S_000838630_S4_L002_R2_001.fastq.gz -O cleaned_reads/Sylv2_85_L002_R2.fastq -q 20 --trim_poly_g --length_required 75 --thread 4

cat cleaned_reads/Sylv2_85_L001_R1.fastq cleaned_reads/Sylv2_85_L002_R1.fastq > cleaned_reads/Sylv2_85_R1.fastq

gzip cleaned_reads/Sylv2_85_R1.fastq

cat cleaned_reads/Sylv2_85_L001_R2.fastq cleaned_reads/Sylv2_85_L002_R2.fastq > cleaned_reads/Sylv2_85_R2.fastq

gzip cleaned_reads/Sylv2_85_R2.fastq

rm cleaned_reads/*.fastq

###Sylv2_95
fastp -i /data/jbl256/Nicotiana/Rep_DE_project/raw_data/NGS12219/NGS12219_A01062_0069_S_000838632_S9_L001_R1_001.fastq.gz -o cleaned_reads/Sylv2_95_L001_R1.fastq -I /data/jbl256/Nicotiana/Rep_DE_project/raw_data/NGS12219/NGS12219_A01062_0069_S_000838632_S9_L001_R2_001.fastq.gz -O cleaned_reads/Sylv2_95_L001_R2.fastq -q 20 --trim_poly_g --length_required 75 --thread 4

fastp -i /data/jbl256/Nicotiana/Rep_DE_project/raw_data/NGS12219/NGS12219_A01062_0069_S_000838632_S9_L002_R1_001.fastq.gz -o cleaned_reads/Sylv2_95_L002_R1.fastq -I /data/jbl256/Nicotiana/Rep_DE_project/raw_data/NGS12219/NGS12219_A01062_0069_S_000838632_S9_L002_R2_001.fastq.gz -O cleaned_reads/Sylv2_95_L002_R2.fastq -q 20 --trim_poly_g --length_required 75 --thread 4

cat cleaned_reads/Sylv2_95_L001_R1.fastq cleaned_reads/Sylv2_95_L002_R1.fastq > cleaned_reads/Sylv2_95_R1.fastq

gzip cleaned_reads/Sylv2_95_R1.fastq

cat cleaned_reads/Sylv2_95_L001_R2.fastq cleaned_reads/Sylv2_95_L002_R2.fastq > cleaned_reads/Sylv2_95_R2.fastq

gzip cleaned_reads/Sylv2_95_R2.fastq

rm cleaned_reads/*.fastq

###Sylv3_leaf
fastp -i /data/jbl256/Nicotiana/Rep_DE_project/raw_data/NGS11037/NGS11037_A01062_0046_S_000807042_S60_L001_R1_001.fastq.gz -o cleaned_reads/Sylv3_leaf_L001_R1.fastq -I /data/jbl256/Nicotiana/Rep_DE_project/raw_data/NGS11037/NGS11037_A01062_0046_S_000807042_S60_L001_R2_001.fastq.gz -O cleaned_reads/Sylv3_leaf_L001_R2.fastq -q 20 --trim_poly_g --length_required 75 --thread 4

fastp -i /data/jbl256/Nicotiana/Rep_DE_project/raw_data/NGS11037/NGS11037_A01062_0046_S_000807042_S60_L002_R1_001.fastq.gz -o cleaned_reads/Sylv3_leaf_L002_R1.fastq -I /data/jbl256/Nicotiana/Rep_DE_project/raw_data/NGS11037/NGS11037_A01062_0046_S_000807042_S60_L002_R2_001.fastq.gz -O cleaned_reads/Sylv3_leaf_L002_R2.fastq -q 20 --trim_poly_g --length_required 75 --thread 4

cat cleaned_reads/Sylv3_leaf_L001_R1.fastq cleaned_reads/Sylv3_leaf_L002_R1.fastq > cleaned_reads/Sylv3_leaf_R1.fastq

gzip cleaned_reads/Sylv3_leaf_R1.fastq

cat cleaned_reads/Sylv3_leaf_L001_R2.fastq cleaned_reads/Sylv3_leaf_L002_R2.fastq > cleaned_reads/Sylv3_leaf_R2.fastq

gzip cleaned_reads/Sylv3_leaf_R2.fastq

rm cleaned_reads/*.fastq

###Sylv6_85
fastp -i /data/jbl256/Nicotiana/Rep_DE_project/raw_data/NGS12221/NGS12221_A01062_0069_S_000838634_S15_L001_R1_001.fastq.gz -o cleaned_reads/Sylv6_85_L001_R1.fastq -I /data/jbl256/Nicotiana/Rep_DE_project/raw_data/NGS12221/NGS12221_A01062_0069_S_000838634_S15_L001_R2_001.fastq.gz -O cleaned_reads/Sylv6_85_L001_R2.fastq -q 20 --trim_poly_g --length_required 75 --thread 4

fastp -i /data/jbl256/Nicotiana/Rep_DE_project/raw_data/NGS12221/NGS12221_A01062_0069_S_000838634_S15_L002_R1_001.fastq.gz -o cleaned_reads/Sylv6_85_L002_R1.fastq -I /data/jbl256/Nicotiana/Rep_DE_project/raw_data/NGS12221/NGS12221_A01062_0069_S_000838634_S15_L002_R2_001.fastq.gz -O cleaned_reads/Sylv6_85_L002_R2.fastq -q 20 --trim_poly_g --length_required 75 --thread 4

cat cleaned_reads/Sylv6_85_L001_R1.fastq cleaned_reads/Sylv6_85_L002_R1.fastq > cleaned_reads/Sylv6_85_R1.fastq

gzip cleaned_reads/Sylv6_85_R1.fastq

cat cleaned_reads/Sylv6_85_L001_R2.fastq cleaned_reads/Sylv6_85_L002_R2.fastq > cleaned_reads/Sylv6_85_R2.fastq

gzip cleaned_reads/Sylv6_85_R2.fastq

rm cleaned_reads/*.fastq

###Sylv6_95
fastp -i /data/jbl256/Nicotiana/Rep_DE_project/raw_data/NGS12222/NGS12222_A01062_0069_S_000838635_S18_L001_R1_001.fastq.gz -o cleaned_reads/Sylv6_95_L001_R1.fastq -I /data/jbl256/Nicotiana/Rep_DE_project/raw_data/NGS12222/NGS12222_A01062_0069_S_000838635_S18_L001_R2_001.fastq.gz -O cleaned_reads/Sylv6_95_L001_R2.fastq -q 20 --trim_poly_g --length_required 75 --thread 4

fastp -i /data/jbl256/Nicotiana/Rep_DE_project/raw_data/NGS12222/NGS12222_A01062_0069_S_000838635_S18_L002_R1_001.fastq.gz -o cleaned_reads/Sylv6_95_L002_R1.fastq -I /data/jbl256/Nicotiana/Rep_DE_project/raw_data/NGS12222/NGS12222_A01062_0069_S_000838635_S18_L002_R2_001.fastq.gz -O cleaned_reads/Sylv6_95_L002_R2.fastq -q 20 --trim_poly_g --length_required 75 --thread 4

cat cleaned_reads/Sylv6_95_L001_R1.fastq cleaned_reads/Sylv6_95_L002_R1.fastq > cleaned_reads/Sylv6_95_R1.fastq

gzip cleaned_reads/Sylv6_95_R1.fastq

cat cleaned_reads/Sylv6_95_L001_R2.fastq cleaned_reads/Sylv6_95_L002_R2.fastq > cleaned_reads/Sylv6_95_R2.fastq

gzip cleaned_reads/Sylv6_95_R2.fastq

rm cleaned_reads/*.fastq

###Sylv7_leaf
fastp -i /data/jbl256/Nicotiana/Rep_DE_project/raw_data/NGS11039/NGS11039_A01062_0046_S_000807044_S80_L001_R1_001.fastq.gz -o cleaned_reads/Sylv7_leaf_L001_R1.fastq -I /data/jbl256/Nicotiana/Rep_DE_project/raw_data/NGS11039/NGS11039_A01062_0046_S_000807044_S80_L001_R2_001.fastq.gz -O cleaned_reads/Sylv7_leaf_L001_R2.fastq -q 20 --trim_poly_g --length_required 75 --thread 4

fastp -i /data/jbl256/Nicotiana/Rep_DE_project/raw_data/NGS11039/NGS11039_A01062_0046_S_000807044_S80_L002_R1_001.fastq.gz -o cleaned_reads/Sylv7_leaf_L002_R1.fastq -I /data/jbl256/Nicotiana/Rep_DE_project/raw_data/NGS11039/NGS11039_A01062_0046_S_000807044_S80_L002_R2_001.fastq.gz -O cleaned_reads/Sylv7_leaf_L002_R2.fastq -q 20 --trim_poly_g --length_required 75 --thread 4

cat cleaned_reads/Sylv7_leaf_L001_R1.fastq cleaned_reads/Sylv7_leaf_L002_R1.fastq > cleaned_reads/Sylv7_leaf_R1.fastq

gzip cleaned_reads/Sylv7_leaf_R1.fastq

cat cleaned_reads/Sylv7_leaf_L001_R2.fastq cleaned_reads/Sylv7_leaf_L002_R2.fastq > cleaned_reads/Sylv7_leaf_R2.fastq

gzip cleaned_reads/Sylv7_leaf_R2.fastq

rm cleaned_reads/*.fastq

###Sylv7_60
fastp -i /data/jbl256/Nicotiana/Rep_DE_project/raw_data/NGS12223/NGS12223_A01062_0069_S_000838628_S20_L001_R1_001.fastq.gz -o cleaned_reads/Sylv7_60_L001_R1.fastq -I /data/jbl256/Nicotiana/Rep_DE_project/raw_data/NGS12223/NGS12223_A01062_0069_S_000838628_S20_L001_R2_001.fastq.gz -O cleaned_reads/Sylv7_60_L001_R2.fastq -q 20 --trim_poly_g --length_required 75 --thread 4

fastp -i /data/jbl256/Nicotiana/Rep_DE_project/raw_data/NGS12223/NGS12223_A01062_0069_S_000838628_S20_L002_R1_001.fastq.gz -o cleaned_reads/Sylv7_60_L002_R1.fastq -I /data/jbl256/Nicotiana/Rep_DE_project/raw_data/NGS12223/NGS12223_A01062_0069_S_000838628_S20_L002_R2_001.fastq.gz -O cleaned_reads/Sylv7_60_L002_R2.fastq -q 20 --trim_poly_g --length_required 75 --thread 4

cat cleaned_reads/Sylv7_60_L001_R1.fastq cleaned_reads/Sylv7_60_L002_R1.fastq > cleaned_reads/Sylv7_60_R1.fastq

gzip cleaned_reads/Sylv7_60_R1.fastq

cat cleaned_reads/Sylv7_60_L001_R2.fastq cleaned_reads/Sylv7_60_L002_R2.fastq > cleaned_reads/Sylv7_60_R2.fastq

gzip cleaned_reads/Sylv7_60_R2.fastq

rm cleaned_reads/*.fastq

###Sylv7_85
fastp -i /data/jbl256/Nicotiana/Rep_DE_project/raw_data/NGS12224/NGS12224_A01062_0069_S_000838636_S2_L001_R1_001.fastq.gz -o cleaned_reads/Sylv7_85_L001_R1.fastq -I /data/jbl256/Nicotiana/Rep_DE_project/raw_data/NGS12224/NGS12224_A01062_0069_S_000838636_S2_L001_R2_001.fastq.gz -O cleaned_reads/Sylv7_85_L001_R2.fastq -q 20 --trim_poly_g --length_required 75 --thread 4

fastp -i /data/jbl256/Nicotiana/Rep_DE_project/raw_data/NGS12224/NGS12224_A01062_0069_S_000838636_S2_L002_R1_001.fastq.gz -o cleaned_reads/Sylv7_85_L002_R1.fastq -I /data/jbl256/Nicotiana/Rep_DE_project/raw_data/NGS12224/NGS12224_A01062_0069_S_000838636_S2_L002_R2_001.fastq.gz -O cleaned_reads/Sylv7_85_L002_R2.fastq -q 20 --trim_poly_g --length_required 75 --thread 4

cat cleaned_reads/Sylv7_85_L001_R1.fastq cleaned_reads/Sylv7_85_L002_R1.fastq > cleaned_reads/Sylv7_85_R1.fastq

gzip cleaned_reads/Sylv7_85_R1.fastq

cat cleaned_reads/Sylv7_85_L001_R2.fastq cleaned_reads/Sylv7_85_L002_R2.fastq > cleaned_reads/Sylv7_85_R2.fastq

gzip cleaned_reads/Sylv7_85_R2.fastq

rm cleaned_reads/*.fastq