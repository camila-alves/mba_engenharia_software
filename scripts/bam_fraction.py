import pysam
import random

# Arquivos de entrada e saída
input_cram = "/Users/dasacamila/Documents/Camila/TCC/mba_engenharia_software/amostras/NA12878.alt_bwamem_GRCh38DH.20150826.CEU.exome.cram"
output_25 = "/Users/dasacamila/Documents/Camila/TCC/mba_engenharia_software/amostras/small.cram"
output_50 = "/Users/dasacamila/Documents/Camila/TCC/mba_engenharia_software/amostras/medium.cram"
reference = "Homo_sapiens_assembly38.fa"

# Definir as frações de amostragem
fraction_25 = 0.25
fraction_50 = 0.5

# Abrir os arquivos de entrada e saída no formato CRAM
with pysam.AlignmentFile(input_cram, "rc", reference_filename=reference) as cram_in, \
     pysam.AlignmentFile(output_25, "wc", header=cram_in.header, reference_filename=reference) as cram_25, \
     pysam.AlignmentFile(output_50, "wc", header=cram_in.header, reference_filename=reference) as cram_50:

    for read in cram_in:
        rand = random.random()
        if rand < fraction_25:
            cram_25.write(read)
        elif rand < fraction_50:
            cram_50.write(read)
