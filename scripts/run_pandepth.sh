#!/bin/bash

echo "Inicio das execuções" 
date

python3 monitor_resources.py "pandepth -i ../amostras/sample_5.bam  -o pandepth_sample_5 -b ../amostras/HG001_GRCh38_1_22_v4.2.1_benchmark.bed" --exec-id sample_5_exec1
python3 monitor_resources.py "pandepth -i ../amostras/sample_5.bam  -o pandepth_sample_5 -b ../amostras/HG001_GRCh38_1_22_v4.2.1_benchmark.bed" --exec-id sample_5_exec2
python3 monitor_resources.py "pandepth -i ../amostras/sample_5.bam  -o pandepth_sample_5 -b ../amostras/HG001_GRCh38_1_22_v4.2.1_benchmark.bed" --exec-id sample_5_exec3
python3 monitor_resources.py "pandepth -i ../amostras/sample_5.bam  -o pandepth_sample_5 -b ../amostras/HG001_GRCh38_1_22_v4.2.1_benchmark.bed" --exec-id sample_5_exec4
python3 monitor_resources.py "pandepth -i ../amostras/sample_5.bam  -o pandepth_sample_5 -b ../amostras/HG001_GRCh38_1_22_v4.2.1_benchmark.bed" --exec-id sample_5_exec5

python3 monitor_resources.py "pandepth -i ../amostras/sample_15.bam  -o pandepth_sample_15 -b ../amostras/HG001_GRCh38_1_22_v4.2.1_benchmark.bed" --exec-id sample_15_exec1
python3 monitor_resources.py "pandepth -i ../amostras/sample_15.bam  -o pandepth_sample_15 -b ../amostras/HG001_GRCh38_1_22_v4.2.1_benchmark.bed" --exec-id sample_15_exec2
python3 monitor_resources.py "pandepth -i ../amostras/sample_15.bam  -o pandepth_sample_15 -b ../amostras/HG001_GRCh38_1_22_v4.2.1_benchmark.bed" --exec-id sample_15_exec3
python3 monitor_resources.py "pandepth -i ../amostras/sample_15.bam  -o pandepth_sample_15 -b ../amostras/HG001_GRCh38_1_22_v4.2.1_benchmark.bed" --exec-id sample_15_exec4
python3 monitor_resources.py "pandepth -i ../amostras/sample_15.bam  -o pandepth_sample_15 -b ../amostras/HG001_GRCh38_1_22_v4.2.1_benchmark.bed" --exec-id sample_15_exec5

python3 monitor_resources.py "pandepth -i ../amostras/sample_25.bam  -o pandepth_sample_25 -b ../amostras/HG001_GRCh38_1_22_v4.2.1_benchmark.bed" --exec-id sample_25_exec1
python3 monitor_resources.py "pandepth -i ../amostras/sample_25.bam  -o pandepth_sample_25 -b ../amostras/HG001_GRCh38_1_22_v4.2.1_benchmark.bed" --exec-id sample_25_exec2
python3 monitor_resources.py "pandepth -i ../amostras/sample_25.bam  -o pandepth_sample_25 -b ../amostras/HG001_GRCh38_1_22_v4.2.1_benchmark.bed" --exec-id sample_25_exec3
python3 monitor_resources.py "pandepth -i ../amostras/sample_25.bam  -o pandepth_sample_25 -b ../amostras/HG001_GRCh38_1_22_v4.2.1_benchmark.bed" --exec-id sample_25_exec4
python3 monitor_resources.py "pandepth -i ../amostras/sample_25.bam  -o pandepth_sample_25 -b ../amostras/HG001_GRCh38_1_22_v4.2.1_benchmark.bed" --exec-id sample_25_exec5

python3 monitor_resources.py "pandepth -i ../amostras/sample_50.bam  -o pandepth_sample_50 -b ../amostras/HG001_GRCh38_1_22_v4.2.1_benchmark.bed" --exec-id sample_50_exec1
python3 monitor_resources.py "pandepth -i ../amostras/sample_50.bam  -o pandepth_sample_50 -b ../amostras/HG001_GRCh38_1_22_v4.2.1_benchmark.bed" --exec-id sample_50_exec2
python3 monitor_resources.py "pandepth -i ../amostras/sample_50.bam  -o pandepth_sample_50 -b ../amostras/HG001_GRCh38_1_22_v4.2.1_benchmark.bed" --exec-id sample_50_exec3
python3 monitor_resources.py "pandepth -i ../amostras/sample_50.bam  -o pandepth_sample_50 -b ../amostras/HG001_GRCh38_1_22_v4.2.1_benchmark.bed" --exec-id sample_50_exec4
python3 monitor_resources.py "pandepth -i ../amostras/sample_50.bam  -o pandepth_sample_50 -b ../amostras/HG001_GRCh38_1_22_v4.2.1_benchmark.bed" --exec-id sample_50_exec5

python3 monitor_resources.py "pandepth -i ../amostras/sample_75.bam  -o pandepth_sample_75 -b ../amostras/HG001_GRCh38_1_22_v4.2.1_benchmark.bed" --exec-id sample_75_exec1
python3 monitor_resources.py "pandepth -i ../amostras/sample_75.bam  -o pandepth_sample_75 -b ../amostras/HG001_GRCh38_1_22_v4.2.1_benchmark.bed" --exec-id sample_75_exec2
python3 monitor_resources.py "pandepth -i ../amostras/sample_75.bam  -o pandepth_sample_75 -b ../amostras/HG001_GRCh38_1_22_v4.2.1_benchmark.bed" --exec-id sample_75_exec3
python3 monitor_resources.py "pandepth -i ../amostras/sample_75.bam  -o pandepth_sample_75 -b ../amostras/HG001_GRCh38_1_22_v4.2.1_benchmark.bed" --exec-id sample_75_exec4
python3 monitor_resources.py "pandepth -i ../amostras/sample_75.bam  -o pandepth_sample_75 -b ../amostras/HG001_GRCh38_1_22_v4.2.1_benchmark.bed" --exec-id sample_75_exec5

python3 monitor_resources.py "pandepth -i ../amostras/NA12878.alt_bwamem_GRCh38DH.20150826.CEU.exome.bam  -o pandepth_sample_100 -b ../amostras/HG001_GRCh38_1_22_v4.2.1_benchmark.bed" --exec-id sample_100_exec1
python3 monitor_resources.py "pandepth -i ../amostras/NA12878.alt_bwamem_GRCh38DH.20150826.CEU.exome.bam  -o pandepth_sample_100 -b ../amostras/HG001_GRCh38_1_22_v4.2.1_benchmark.bed" --exec-id sample_100_exec2
python3 monitor_resources.py "pandepth -i ../amostras/NA12878.alt_bwamem_GRCh38DH.20150826.CEU.exome.bam  -o pandepth_sample_100 -b ../amostras/HG001_GRCh38_1_22_v4.2.1_benchmark.bed" --exec-id sample_100_exec3
python3 monitor_resources.py "pandepth -i ../amostras/NA12878.alt_bwamem_GRCh38DH.20150826.CEU.exome.bam  -o pandepth_sample_100 -b ../amostras/HG001_GRCh38_1_22_v4.2.1_benchmark.bed" --exec-id sample_100_exec4
python3 monitor_resources.py "pandepth -i ../amostras/NA12878.alt_bwamem_GRCh38DH.20150826.CEU.exome.bam  -o pandepth_sample_100 -b ../amostras/HG001_GRCh38_1_22_v4.2.1_benchmark.bed" --exec-id sample_100_exec5

echo "Execuções finalizadas" 
date
echo "===================================="


#real    47m56.689s
#user    50m26.229s
#sys     30m26.686s