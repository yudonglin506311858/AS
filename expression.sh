for i in {XH-Z2wt-pro-19-11-26_FKDL192547546-1a-33,XH-Z2wt-pro-19-11-27_FKDL192547546-1a-41,XH-Z2wt-Baso-19-11-26_FKDL192547546-1a-34,XH-Z2wt-Baso-19-11-27_FKDL192547546-1a-42,XH-Z2wt-poly-19-11-26_FKDL192547546-1a-35,XH-Z2wt-poly-19-11-27_FKDL192547546-1a-43,XH-Z2wt-ortho-19-11-26_FKDL192547546-1a-36,XH-Z2wt-ortho-19-11-27_FKDL192547546-1a-44,XH-Z2B654-pro-19-11-26_FKDL192547546-1a-37,XH-Z2B654-pro-19-11-27_FKDL192547546-1a-45,XH-Z2B654-Baso-19-11-26_FKDL192547546-1a-38,XH-Z2B654-Baso-19-11-27_FKDL192547546-1a-46,XH-Z2B654-poly-19-11-26_FKDL192547546-1a-39,XH-Z2B654-poly-19-11-27_FKDL192547546-1a-47,XH-Z2B654-ortho-19-11-26_FKDL192547546-1a-40,XH-Z2B654-ortho-19-11-27_FKDL192547546-1a-48}; 
do  
cutadapt --pair-filter=any --minimum-length 15 --max-n 8 -a AGATCGGAAGAGCACACGTCTGAACTCCAGTCAC -A AGATCGGAAGAGCGTCGTGTAGGGAAAGAGTGTAGATCTCGGTGGTCGCCGTATCATT -o ${i}_rmadp_1.fastq.gz -p ${i}_rmadp_2.fastq.gz ${i}_1.fq.gz ${i}_2.fq.gz >>filter.txt 2>&1; 
java -jar /data/yudonglin/software/Trimmomatic-0.36/trimmomatic-0.36.jar PE -threads 20 -phred33 ${i}_rmadp_1.fastq.gz ${i}_rmadp_2.fastq.gz -baseout ${i}_fliter.fq.gz  AVGQUAL:20 SLIDINGWINDOW:4:15 MINLEN:15 1>>filter.txt 2>&1;
rm ${i}_rmadp_1.fastq.gz; 
rm ${i}_rmadp_2.fastq.gz;
#hisat2 --thread 10 -x /data/yudonglin/reference/mm10/genome -1 ${i}_fliter_1P.fq.gz -2 ${i}_fliter_2P.fq.gz -S ${i}.sam; 
bowtie2 -p 50 -x /data/yudonglin/reference/mouse/mm10 -1 ${i}_fliter_1P.fq.gz -2 ${i}_fliter_2P.fq.gz -S ${i}.sam
samtools sort -@ 30 -o ${i}.bam ${i}.sam >>samtools.txt 2>&1; 
rm ${i}.sam 
featureCounts -T 10 -t exon -g gene_id -a /data/yudonglin/reference/Mus_musculus.GRCm38.102.gtf -o ${i}.count ${i}.bam >>count.txt 2>&1; 
samtools sort ${i}.bam -o ${i}_sorted.bam; 
samtools index ${i}_sorted.bam; 
conda activate atac-seq; 
bamCoverage --bam ${i}_sorted.bam -o ${i}_sorted.bam.bw  --binSize 10 ; 
conda deactivate; 
rm ${i}.bam; 
done

