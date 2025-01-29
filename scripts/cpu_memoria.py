import subprocess
import psutil
import time

def monitor_resources(cmd, interval=1):
    # Inicia o processo
    process = subprocess.Popen(cmd, shell=True)
    pid = process.pid

    # Monitora o processo
    cpu_usage = []
    memory_usage = []
    while process.poll() is None:
        try:
            proc = psutil.Process(pid)
            cpu_usage.append(proc.cpu_percent(interval=interval))
            memory_usage.append(proc.memory_info().rss / (1024 * 1024))  # MB
        except psutil.NoSuchProcess:
            break

    return cpu_usage, memory_usage

# Exemplo de comando para "samtools depth"
cmd = "samtools depth small.bam > output_samtools.txt"
cpu, memory = monitor_resources(cmd)

# Salvar os resultados
with open("resources_usage.csv", "w") as f:
    f.write("Timestamp,CPU_Usage(%),Memory_Usage(MB)\n")
    for i, (c, m) in enumerate(zip(cpu, memory)):
        f.write(f"{i},{c},{m}\n")
