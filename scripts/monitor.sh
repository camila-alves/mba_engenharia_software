#!/bin/bash

# Nome do processo
PROCESS_NAME=$1
shift

# Número de execuções
NUM_EXECUTIONS=${1:-1} # Padrão é 1 se $1 não for fornecido

# Validar se o número de execuções é um inteiro positivo
if ! [[ "$NUM_EXECUTIONS" =~ ^[0-9]+$ ]] || [ "$NUM_EXECUTIONS" -le 0 ]; then
    echo "Por favor, forneça um número inteiro positivo como argumento."
    exit 1
fi

# Loop para executar o monitoramento pelo número de amostras
for ((i=1; i<=NUM_EXECUTIONS; i++)); do
    echo "Execução $i de $NUM_EXECUTIONS"

    # Capturar o PID do processo principal
    MAIN_PID=$(ps aux | grep $PROCESS_NAME | grep -v grep | awk '{print $2}' | head -n 1)

    if [ -z "$MAIN_PID" ]; then
        echo "Nenhum processo encontrado para $PROCESS_NAME na execução $i."
        continue
    fi

    echo "Monitorando processo $PROCESS_NAME com PID $MAIN_PID"

    OUTPUT_LOG="${PROCESS_NAME}_${MAIN_PID}_exec${i}.usage.txt"
    OUTPUT_PLOT="${PROCESS_NAME}_${MAIN_PID}_exec${i}.usage.png"

    echo "Salvando log em $OUTPUT_LOG e gráfico em $OUTPUT_PLOT"

    psrecord $MAIN_PID \
        --log $OUTPUT_LOG \
        --plot $OUTPUT_PLOT \
        --include-children \
        --include-io \
        --interval 1

    echo "Execução $i concluída."
done

echo "Monitoramento finalizado."