import pandas as pd
import matplotlib.pyplot as plt

# Carregando resultados de tempo
execution_data = pd.read_csv("execution_times.csv")

# Gráfico de barras para comparar tempos
plt.figure(figsize=(10, 6))
for tool in execution_data['Tool'].unique():
    subset = execution_data[execution_data['Tool'] == tool]
    plt.bar(subset['Input'], subset['Runtime'], label=tool)

plt.xlabel("Arquivos de Entrada")
plt.ylabel("Tempo de Execução (s)")
plt.title("Comparação de Tempo de Execução")
plt.legend()
plt.savefig("execution_times.png")
plt.show()

# Carregando resultados de uso de recursos
resources_data = pd.read_csv("resources_usage.csv")

# Gráfico de linha para CPU e memória
plt.figure(figsize=(10, 6))
plt.plot(resources_data["Timestamp"], resources_data["CPU_Usage(%)"], label="CPU (%)")
plt.plot(resources_data["Timestamp"], resources_data["Memory_Usage(MB)"], label="Memória (MB)")
plt.xlabel("Tempo")
plt.ylabel("Uso de Recursos")
plt.title("Monitoramento de Recursos")
plt.legend()
plt.savefig("resource_usage.png")
plt.show()
