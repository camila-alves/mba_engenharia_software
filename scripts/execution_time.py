import subprocess
import time

# Configurações dos arquivos de entrada e ferramentas
tools = ["samtools", "mosdepth", "pandepth"]
inputs = ["small.bam", "medium.bam", "large.bam"]
output_prefix = "results"

# Função para medir tempo de execução
def measure_execution(tool, input_file):
    start_time = time.time()
    if tool == "samtools":
        cmd = f"{tool} depth {input_file} > {output_prefix}_{tool}.txt"
    elif tool == "mosdepth":
        cmd = f"{tool} {output_prefix}_{tool} {input_file}"
    elif tool == "pandepth":
        cmd = f"{tool} -i {input_file} -o {output_prefix}_{tool}.txt"
    else:
        return None
    
    subprocess.run(cmd, shell=True, check=True)
    end_time = time.time()
    return end_time - start_time

# Executando testes para todas as ferramentas
results = []
for tool in tools:
    for input_file in inputs:
        runtime = measure_execution(tool, input_file)
        results.append((tool, input_file, runtime))

# Salvando resultados em um arquivo
with open("execution_times.csv", "w") as f:
    f.write("Tool,Input,Runtime\n")
    for tool, input_file, runtime in results:
        f.write(f"{tool},{input_file},{runtime}\n")
