#!/bin/bash

echo "Inicio das execuções" 
date

python3 monitor_resources.py "mosdepth --by ../amostras/HG001_GRCh38_1_22_v4.2.1_benchmark.bed mosdepth_sample_5 ../amostras/sample_5.bam" --exec-id  sample_5_exec1
python3 monitor_resources.py "mosdepth --by ../amostras/HG001_GRCh38_1_22_v4.2.1_benchmark.bed mosdepth_sample_5 ../amostras/sample_5.bam" --exec-id  sample_5_exec2
python3 monitor_resources.py "mosdepth --by ../amostras/HG001_GRCh38_1_22_v4.2.1_benchmark.bed mosdepth_sample_5 ../amostras/sample_5.bam" --exec-id  sample_5_exec3
python3 monitor_resources.py "mosdepth --by ../amostras/HG001_GRCh38_1_22_v4.2.1_benchmark.bed mosdepth_sample_5 ../amostras/sample_5.bam" --exec-id  sample_5_exec4
python3 monitor_resources.py "mosdepth --by ../amostras/HG001_GRCh38_1_22_v4.2.1_benchmark.bed mosdepth_sample_5 ../amostras/sample_5.bam" --exec-id  sample_5_exec5

python3 monitor_resources.py "mosdepth --by ../amostras/HG001_GRCh38_1_22_v4.2.1_benchmark.bed mosdepth_sample_15 ../amostras/sample_15.bam" --exec-id  sample_15_exec1
python3 monitor_resources.py "mosdepth --by ../amostras/HG001_GRCh38_1_22_v4.2.1_benchmark.bed mosdepth_sample_15 ../amostras/sample_15.bam" --exec-id  sample_15_exec2
python3 monitor_resources.py "mosdepth --by ../amostras/HG001_GRCh38_1_22_v4.2.1_benchmark.bed mosdepth_sample_15 ../amostras/sample_15.bam" --exec-id  sample_15_exec3
python3 monitor_resources.py "mosdepth --by ../amostras/HG001_GRCh38_1_22_v4.2.1_benchmark.bed mosdepth_sample_15 ../amostras/sample_15.bam" --exec-id  sample_15_exec4
python3 monitor_resources.py "mosdepth --by ../amostras/HG001_GRCh38_1_22_v4.2.1_benchmark.bed mosdepth_sample_15 ../amostras/sample_15.bam" --exec-id  sample_15_exec5

python3 monitor_resources.py "mosdepth --by ../amostras/HG001_GRCh38_1_22_v4.2.1_benchmark.bed mosdepth_sample_25 ../amostras/sample_25.bam" --exec-id  sample_25_exec1
python3 monitor_resources.py "mosdepth --by ../amostras/HG001_GRCh38_1_22_v4.2.1_benchmark.bed mosdepth_sample_25 ../amostras/sample_25.bam" --exec-id  sample_25_exec2
python3 monitor_resources.py "mosdepth --by ../amostras/HG001_GRCh38_1_22_v4.2.1_benchmark.bed mosdepth_sample_25 ../amostras/sample_25.bam" --exec-id  sample_25_exec3
python3 monitor_resources.py "mosdepth --by ../amostras/HG001_GRCh38_1_22_v4.2.1_benchmark.bed mosdepth_sample_25 ../amostras/sample_25.bam" --exec-id  sample_25_exec4
python3 monitor_resources.py "mosdepth --by ../amostras/HG001_GRCh38_1_22_v4.2.1_benchmark.bed mosdepth_sample_25 ../amostras/sample_25.bam" --exec-id  sample_25_exec5

python3 monitor_resources.py "mosdepth --by ../amostras/HG001_GRCh38_1_22_v4.2.1_benchmark.bed mosdepth_sample_50 ../amostras/sample_50.bam" --exec-id  sample_50_exec1
python3 monitor_resources.py "mosdepth --by ../amostras/HG001_GRCh38_1_22_v4.2.1_benchmark.bed mosdepth_sample_50 ../amostras/sample_50.bam" --exec-id  sample_50_exec2
python3 monitor_resources.py "mosdepth --by ../amostras/HG001_GRCh38_1_22_v4.2.1_benchmark.bed mosdepth_sample_50 ../amostras/sample_50.bam" --exec-id  sample_50_exec3
python3 monitor_resources.py "mosdepth --by ../amostras/HG001_GRCh38_1_22_v4.2.1_benchmark.bed mosdepth_sample_50 ../amostras/sample_50.bam" --exec-id  sample_50_exec4
python3 monitor_resources.py "mosdepth --by ../amostras/HG001_GRCh38_1_22_v4.2.1_benchmark.bed mosdepth_sample_50 ../amostras/sample_50.bam" --exec-id  sample_50_exec5

python3 monitor_resources.py "mosdepth --by ../amostras/HG001_GRCh38_1_22_v4.2.1_benchmark.bed mosdepth_sample_75 ../amostras/sample_75.bam" --exec-id  sample_75_exec1
python3 monitor_resources.py "mosdepth --by ../amostras/HG001_GRCh38_1_22_v4.2.1_benchmark.bed mosdepth_sample_75 ../amostras/sample_75.bam" --exec-id  sample_75_exec2
python3 monitor_resources.py "mosdepth --by ../amostras/HG001_GRCh38_1_22_v4.2.1_benchmark.bed mosdepth_sample_75 ../amostras/sample_75.bam" --exec-id  sample_75_exec3
python3 monitor_resources.py "mosdepth --by ../amostras/HG001_GRCh38_1_22_v4.2.1_benchmark.bed mosdepth_sample_75 ../amostras/sample_75.bam" --exec-id  sample_75_exec4
python3 monitor_resources.py "mosdepth --by ../amostras/HG001_GRCh38_1_22_v4.2.1_benchmark.bed mosdepth_sample_75 ../amostras/sample_75.bam" --exec-id  sample_75_exec5

python3 monitor_resources.py "mosdepth --by ../amostras/HG001_GRCh38_1_22_v4.2.1_benchmark.bed mosdepth_sample_100 ../amostras/NA12878.alt_bwamem_GRCh38DH.20150826.CEU.exome.bam" --exec-id  sample_100_exec1
python3 monitor_resources.py "mosdepth --by ../amostras/HG001_GRCh38_1_22_v4.2.1_benchmark.bed mosdepth_sample_100 ../amostras/NA12878.alt_bwamem_GRCh38DH.20150826.CEU.exome.bam" --exec-id  sample_100_exec2
python3 monitor_resources.py "mosdepth --by ../amostras/HG001_GRCh38_1_22_v4.2.1_benchmark.bed mosdepth_sample_100 ../amostras/NA12878.alt_bwamem_GRCh38DH.20150826.CEU.exome.bam" --exec-id  sample_100_exec3
python3 monitor_resources.py "mosdepth --by ../amostras/HG001_GRCh38_1_22_v4.2.1_benchmark.bed mosdepth_sample_100 ../amostras/NA12878.alt_bwamem_GRCh38DH.20150826.CEU.exome.bam" --exec-id  sample_100_exec4
python3 monitor_resources.py "mosdepth --by ../amostras/HG001_GRCh38_1_22_v4.2.1_benchmark.bed mosdepth_sample_100 ../amostras/NA12878.alt_bwamem_GRCh38DH.20150826.CEU.exome.bam" --exec-id  sample_100_exec5

echo "Execuções finalizadas" 
date
echo "===================================="

