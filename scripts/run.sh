#!/bin/bash

echo "Inicio das execuções" 
date

python3 monitor_resources.py "./samtools_wrapper.sh ../amostras/sample_5.bam samtools_sample_5.txt.gz" --exec-id sample_5_exec1
python3 monitor_resources.py "./samtools_wrapper.sh ../amostras/sample_5.bam samtools_sample_5.txt.gz" --exec-id sample_5_exec2
python3 monitor_resources.py "./samtools_wrapper.sh ../amostras/sample_5.bam samtools_sample_5.txt.gz" --exec-id sample_5_exec3
python3 monitor_resources.py "./samtools_wrapper.sh ../amostras/sample_5.bam samtools_sample_5.txt.gz" --exec-id sample_5_exec4
python3 monitor_resources.py "./samtools_wrapper.sh ../amostras/sample_5.bam samtools_sample_5.txt.gz" --exec-id sample_5_exec5

python3 monitor_resources.py "./samtools_wrapper.sh ../amostras/sample_15.bam samtools_sample_15.txt.gz" --exec-id sample_15_exec1
python3 monitor_resources.py "./samtools_wrapper.sh ../amostras/sample_15.bam samtools_sample_15.txt.gz" --exec-id sample_15_exec2
python3 monitor_resources.py "./samtools_wrapper.sh ../amostras/sample_15.bam samtools_sample_15.txt.gz" --exec-id sample_15_exec3
python3 monitor_resources.py "./samtools_wrapper.sh ../amostras/sample_15.bam samtools_sample_15.txt.gz" --exec-id sample_15_exec4
python3 monitor_resources.py "./samtools_wrapper.sh ../amostras/sample_15.bam samtools_sample_15.txt.gz" --exec-id sample_15_exec5

python3 monitor_resources.py "./samtools_wrapper.sh ../amostras/sample_25.bam samtools_sample_25.txt.gz" --exec-id sample_25_exec1
python3 monitor_resources.py "./samtools_wrapper.sh ../amostras/sample_25.bam samtools_sample_25.txt.gz" --exec-id sample_25_exec2
python3 monitor_resources.py "./samtools_wrapper.sh ../amostras/sample_25.bam samtools_sample_25.txt.gz" --exec-id sample_25_exec3
python3 monitor_resources.py "./samtools_wrapper.sh ../amostras/sample_25.bam samtools_sample_25.txt.gz" --exec-id sample_25_exec4
python3 monitor_resources.py "./samtools_wrapper.sh ../amostras/sample_25.bam samtools_sample_25.txt.gz" --exec-id sample_25_exec5

python3 monitor_resources.py "./samtools_wrapper.sh ../amostras/sample_50.bam samtools_sample_50.txt.gz" --exec-id sample_50_exec1
python3 monitor_resources.py "./samtools_wrapper.sh ../amostras/sample_50.bam samtools_sample_50.txt.gz" --exec-id sample_50_exec2
python3 monitor_resources.py "./samtools_wrapper.sh ../amostras/sample_50.bam samtools_sample_50.txt.gz" --exec-id sample_50_exec3
python3 monitor_resources.py "./samtools_wrapper.sh ../amostras/sample_50.bam samtools_sample_50.txt.gz" --exec-id sample_50_exec4
python3 monitor_resources.py "./samtools_wrapper.sh ../amostras/sample_50.bam samtools_sample_50.txt.gz" --exec-id sample_50_exec5

python3 monitor_resources.py "./samtools_wrapper.sh ../amostras/sample_75.bam samtools_sample_75.txt.gz" --exec-id sample_75_exec1
python3 monitor_resources.py "./samtools_wrapper.sh ../amostras/sample_75.bam samtools_sample_75.txt.gz" --exec-id sample_75_exec2
python3 monitor_resources.py "./samtools_wrapper.sh ../amostras/sample_75.bam samtools_sample_75.txt.gz" --exec-id sample_75_exec3
python3 monitor_resources.py "./samtools_wrapper.sh ../amostras/sample_75.bam samtools_sample_75.txt.gz" --exec-id sample_75_exec4
python3 monitor_resources.py "./samtools_wrapper.sh ../amostras/sample_75.bam samtools_sample_75.txt.gz" --exec-id sample_75_exec5

python3 monitor_resources.py "./samtools_wrapper.sh ../amostras/NA12878.alt_bwamem_GRCh38DH.20150826.CEU.exome.bam samtools_sample_100.txt.gz" --exec-id sample_100_exec1
python3 monitor_resources.py "./samtools_wrapper.sh ../amostras/NA12878.alt_bwamem_GRCh38DH.20150826.CEU.exome.bam samtools_sample_100.txt.gz" --exec-id sample_100_exec2
python3 monitor_resources.py "./samtools_wrapper.sh ../amostras/NA12878.alt_bwamem_GRCh38DH.20150826.CEU.exome.bam samtools_sample_100.txt.gz" --exec-id sample_100_exec3
python3 monitor_resources.py "./samtools_wrapper.sh ../amostras/NA12878.alt_bwamem_GRCh38DH.20150826.CEU.exome.bam samtools_sample_100.txt.gz" --exec-id sample_100_exec4
python3 monitor_resources.py "./samtools_wrapper.sh ../amostras/NA12878.alt_bwamem_GRCh38DH.20150826.CEU.exome.bam samtools_sample_100.txt.gz" --exec-id sample_100_exec5

echo "Execuções finalizadas" 
date
echo "===================================="