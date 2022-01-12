data:
(base) [ydl@localhost rnaseqdata]$ ls *.gz
XH-Z2B654-Baso-19-11-26_FKDL192547546-1a-38_1.fq.gz
XH-Z2B654-Baso-19-11-26_FKDL192547546-1a-38_2.fq.gz
XH-Z2B654-Baso-19-11-27_FKDL192547546-1a-46_1.fq.gz
XH-Z2B654-Baso-19-11-27_FKDL192547546-1a-46_2.fq.gz
XH-Z2B654-ortho-19-11-26_FKDL192547546-1a-40_1.fq.gz
XH-Z2B654-ortho-19-11-26_FKDL192547546-1a-40_2.fq.gz
XH-Z2B654-ortho-19-11-27_FKDL192547546-1a-48_1.fq.gz
XH-Z2B654-ortho-19-11-27_FKDL192547546-1a-48_2.fq.gz
XH-Z2B654-poly-19-11-26_FKDL192547546-1a-39_1.fq.gz
XH-Z2B654-poly-19-11-26_FKDL192547546-1a-39_2.fq.gz
XH-Z2B654-poly-19-11-27_FKDL192547546-1a-47_1.fq.gz
XH-Z2B654-poly-19-11-27_FKDL192547546-1a-47_2.fq.gz
XH-Z2B654-pro-19-11-26_FKDL192547546-1a-37_1.fq.gz
XH-Z2B654-pro-19-11-26_FKDL192547546-1a-37_2.fq.gz
XH-Z2B654-pro-19-11-27_FKDL192547546-1a-45_1.fq.gz
XH-Z2B654-pro-19-11-27_FKDL192547546-1a-45_2.fq.gz
XH-Z2wt-Baso-19-11-26_FKDL192547546-1a-34_1.fq.gz
XH-Z2wt-Baso-19-11-26_FKDL192547546-1a-34_2.fq.gz
XH-Z2wt-Baso-19-11-27_FKDL192547546-1a-42_1.fq.gz
XH-Z2wt-Baso-19-11-27_FKDL192547546-1a-42_2.fq.gz
XH-Z2wt-ortho-19-11-26_FKDL192547546-1a-36_1.fq.gz
XH-Z2wt-ortho-19-11-26_FKDL192547546-1a-36_2.fq.gz
XH-Z2wt-ortho-19-11-27_FKDL192547546-1a-44_1.fq.gz
XH-Z2wt-ortho-19-11-27_FKDL192547546-1a-44_2.fq.gz
XH-Z2wt-poly-19-11-26_FKDL192547546-1a-35_1.fq.gz
XH-Z2wt-poly-19-11-26_FKDL192547546-1a-35_2.fq.gz
XH-Z2wt-poly-19-11-27_FKDL192547546-1a-43_1.fq.gz
XH-Z2wt-poly-19-11-27_FKDL192547546-1a-43_2.fq.gz
XH-Z2wt-pro-19-11-26_FKDL192547546-1a-33_1.fq.gz
XH-Z2wt-pro-19-11-26_FKDL192547546-1a-33_2.fq.gz
XH-Z2wt-pro-19-11-27_FKDL192547546-1a-41_1.fq.gz
XH-Z2wt-pro-19-11-27_FKDL192547546-1a-41_2.fq.gz



hisat2:
(base) [ydl@localhost rnaseqdata]$ ls *.bam -lh
-rw-rw-r--. 1 ydl ydl 1.7G Jan  8 07:37 XH-Z2B654-Baso-19-11-26_FKDL192547546-1a-38_sorted.bam
-rw-rw-r--. 1 ydl ydl 1.6G Jan  8 08:25 XH-Z2B654-Baso-19-11-27_FKDL192547546-1a-46_sorted.bam
-rw-rw-r--. 1 ydl ydl 3.6G Jan  8 12:18 XH-Z2B654-ortho-19-11-26_FKDL192547546-1a-40_sorted.bam
-rw-rw-r--. 1 ydl ydl 3.6G Jan  8 14:07 XH-Z2B654-ortho-19-11-27_FKDL192547546-1a-48_sorted.bam
-rw-rw-r--. 1 ydl ydl 1.9G Jan  8 09:16 XH-Z2B654-poly-19-11-26_FKDL192547546-1a-39_sorted.bam
-rw-rw-r--. 1 ydl ydl 3.0G Jan  8 10:41 XH-Z2B654-poly-19-11-27_FKDL192547546-1a-47_sorted.bam
-rw-rw-r--. 1 ydl ydl 2.2G Jan  8 05:02 XH-Z2B654-pro-19-11-26_FKDL192547546-1a-37_sorted.bam
-rw-rw-r--. 1 ydl ydl 3.2G Jan  8 06:39 XH-Z2B654-pro-19-11-27_FKDL192547546-1a-45_sorted.bam
-rw-rw-r--. 1 ydl ydl 1.3G Jan  7 22:38 XH-Z2wt-Baso-19-11-26_FKDL192547546-1a-34_sorted.bam
-rw-rw-r--. 1 ydl ydl 1.4G Jan  7 23:23 XH-Z2wt-Baso-19-11-27_FKDL192547546-1a-42_sorted.bam
-rw-rw-r--. 1 ydl ydl 1.5G Jan  8 01:57 XH-Z2wt-ortho-19-11-26_FKDL192547546-1a-36_sorted.bam
-rw-rw-r--. 1 ydl ydl 3.9G Jan  8 03:30 XH-Z2wt-ortho-19-11-27_FKDL192547546-1a-44_sorted.bam
-rw-rw-r--. 1 ydl ydl 1.6G Jan  8 00:12 XH-Z2wt-poly-19-11-26_FKDL192547546-1a-35_sorted.bam
-rw-rw-r--. 1 ydl ydl 1.9G Jan  8 01:08 XH-Z2wt-poly-19-11-27_FKDL192547546-1a-43_sorted.bam
-rw-rw-r--. 1 ydl ydl 1.3G Jan  7 21:11 XH-Z2wt-pro-19-11-26_FKDL192547546-1a-33_sorted.bam
-rw-rw-r--. 1 ydl ydl 1.5G Jan  7 21:57 XH-Z2wt-pro-19-11-27_FKDL192547546-1a-41_sorted.bam

bowtie2:





