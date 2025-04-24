import argparse
import psutil
import subprocess
import time
import datetime
import csv
import os
import matplotlib.pyplot as plt


def monitor_resources(comando, interval=1, exec_id=1):
    timestamp = datetime.datetime.now().strftime("%Y%m%d_%H%M%S")
    folder = f"exec_{exec_id}_{timestamp}"
    os.makedirs(folder, exist_ok=True)

    print(f"[INFO] Iniciando comando: {comando}")
    process = subprocess.Popen(comando, shell=True)
    pid = process.pid
    print(f"[INFO] PID {pid} iniciado para comando.")

    cpu_list, mem_list, net_list, disk_list, time_list = [], [], [], [], []

    start_time = time.time()

    try:
        while process.poll() is None:
            cpu = psutil.cpu_percent(interval=None)
            mem = psutil.virtual_memory().used / (1024 * 1024)  # MB
            net_sent = psutil.net_io_counters().bytes_sent
            net_recv = psutil.net_io_counters().bytes_recv
            net = net_sent + net_recv
            net_mb = net / (1024 * 1024)  # MB
            disk_read = psutil.disk_io_counters().read_bytes
            disk_write = psutil.disk_io_counters().write_bytes
            disk = disk_read + disk_write
            disk_mb = disk / (1024 * 1024)  # MB

            elapsed = time.time() - start_time

            cpu_list.append(cpu)
            mem_list.append(mem)
            net_list.append(net_mb)
            disk_list.append(disk_mb)
            time_list.append(elapsed)

            time.sleep(interval)
    except KeyboardInterrupt:
        process.terminate()
        print("[WARN] Monitoramento interrompido pelo usuário.")

    total_time = time.time() - start_time

    csv_file = os.path.join(folder, "monitor.csv")
    with open(csv_file, "w", newline="") as f:
        writer = csv.writer(f)
        writer.writerow([
            "Tempo", "CPU (%)", "Memória (MB)", "Rede (MB)", "Disco (MB)"
        ])
        for i in range(len(time_list)):
            writer.writerow([
                f"{time_list[i]:.2f}",
                f"{cpu_list[i]:.2f}",
                f"{mem_list[i]:.2f}",
                f"{net_list[i]:.2f}",
                f"{disk_list[i]:.2f}"
            ])

    plt.figure(figsize=(10, 6))
    plt.plot(time_list, cpu_list, label="CPU (%)")
    plt.plot(time_list, mem_list, label="Memória (MB)")
    plt.plot(time_list, net_list, label="Rede (MB)")
    plt.plot(time_list, disk_list, label="Disco (MB)")
    plt.xlabel("Tempo (s)")
    plt.ylabel("Uso de recurso")
    plt.title("Monitoramento de Recursos")
    plt.legend()
    plt.tight_layout()
    plt.savefig(os.path.join(folder, "monitor.png"))
    plt.close()

    def format_linha(label, max_val, media_val, largura=60):
        linha = f"│ {label:<18}: Máx={max_val:>6.2f} | Média={media_val:>6.2f}"
        return linha.ljust(largura - 1) + "│"

    resumo_str = (
        "\n╭" + "─" * 66 + "╮\n"
        + f"│ {'📊 Resumo de Recursos':^66} │\n"
        + "├" + "─" * 66 + "┤\n"
        + f"│ ⏱️  Tempo total       : {total_time:.2f} segundos"
        .ljust(66) + " │\n"
        + format_linha(
            "🧠 Memória (MB)", max(mem_list), sum(mem_list)/len(mem_list)
        ) + "\n"
        + format_linha(
            "💾 Disco (MB)", max(disk_list), sum(disk_list)/len(disk_list)
        ) + "\n"
        + format_linha(
            "⚙️  CPU (%)", max(cpu_list), sum(cpu_list)/len(cpu_list)
        ) + "\n"
        + format_linha(
            "🌐 Rede (MB)", max(net_list), sum(net_list)/len(net_list)
        ) + "\n"
        + "╰" + "─" * 66 + "╯\n"
    )

    resumo_tsv_file = os.path.join(folder, "resumo.tsv")
    with open(resumo_tsv_file, "w") as f:
        f.write("Métrica\tMáximo\tMédia\n")
        f.write(
            f"Memória (MB)\t{max(mem_list):.2f}\t"
            f"{sum(mem_list)/len(mem_list):.2f}\n"
        )
        f.write(
            f"Disco (MB)\t{max(disk_list):.2f}\t"
            f"{sum(disk_list)/len(disk_list):.2f}\n"
        )
        f.write(
            f"CPU (%)\t{max(cpu_list):.2f}\t"
            f"{sum(cpu_list)/len(cpu_list):.2f}\n"
        )
        f.write(
            f"Rede (MB)\t{max(net_list):.2f}\t"
            f"{sum(net_list)/len(net_list):.2f}\n"
        )
        f.write(f"Tempo total (s)\t{total_time:.2f}\t-\n")

    print("[OK] Monitoramento concluído. Saídas salvas na pasta:", folder)
    print("     - CSV: ", csv_file)
    print("     - Gráfico: ", os.path.join(folder, "monitor.png"))
    print(resumo_str)


if __name__ == "__main__":
    parser = argparse.ArgumentParser(
        description="Monitorar uso de recursos de um comando."
    )
    parser.add_argument(
        "comando", nargs='+', help="Comando a ser executado (com argumentos)"
    )
    parser.add_argument(
        "--intervalo",
        type=int,
        default=1,
        help="Intervalo de amostragem em segundos"
    )
    parser.add_argument(
        "--exec-id",
        default=1,
        help="ID da execução (para nome da pasta)"
    )

    args = parser.parse_args()
    comando = " ".join(args.comando)

    monitor_resources(comando, interval=args.intervalo, exec_id=args.exec_id)
