#!/bin/bash

# Variáveis
TOOLS=("samtools" "mosdepth" "pandepth")
INPUTS=("small.bam" "medium.bam" "large.bam")
DOCKER_IMAGES=("samtools-image" "mosdepth-image" "pandepth-image")
OUTPUT_DIR="./results"

mkdir -p $OUTPUT_DIR

# Loop para executar cada ferramenta
for i in "${!TOOLS[@]}"; do
    tool=${TOOLS[$i]}
    image=${DOCKER_IMAGES[$i]}
    
    for input in "${INPUTS[@]}"; do
        output="${OUTPUT_DIR}/${tool}_$(basename $input)_output.txt"
        echo "Executando $tool com $input..."
        
        docker run --rm \
            -v $(pwd):/data \
            $image \
            ${tool} depth /data/$input > $output
        
        echo "Resultado salvo em $output"
    done
done

