#!/bin/bash
samtools depth "$1" -b ../amostras/HG001_GRCh38_1_22_v4.2.1_benchmark.bed | gzip > "$2"


