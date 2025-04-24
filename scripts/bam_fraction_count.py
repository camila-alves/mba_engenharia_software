import argparse
import logging
import pysam
from pathlib import Path

logging.basicConfig(
    level=logging.INFO,
    format='%(asctime)s [%(levelname)s] %(message)s'
)


def contar_total_reads(bam_path):
    with pysam.AlignmentFile(bam_path, "rb") as bam:
        return sum(1 for _ in bam)


def escrever_fracionados(bam_path, fractions, output_dir):
    total_reads = contar_total_reads(bam_path)
    logging.info(f"Total de reads: {total_reads}")

    thresholds = {k: int(total_reads * f) for k, f in fractions.items()}
    logging.info(f"Thresholds: {thresholds}")

    output_paths = {k: Path(output_dir) / f"sample_{k}.bam" for k in fractions}
    out_files = {
        k: pysam.AlignmentFile(
            str(path), "wb", template=pysam.AlignmentFile(bam_path, "rb")
        )
        for k, path in output_paths.items()
    }

    written_counters = {k: 0 for k in fractions}

    with pysam.AlignmentFile(bam_path, "rb") as bam:
        for i, read in enumerate(bam, start=1):
            for k in fractions:
                if written_counters[k] < thresholds[k]:
                    out_files[k].write(read)
                    written_counters[k] += 1
            if all(written_counters[k] >= thresholds[k] for k in fractions):
                break

    for f in out_files.values():
        f.close()

    logging.info("Fracionamento finalizado com sucesso.")


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "-i", "--input", required=True, help="Arquivo BAM de entrada"
    )
    parser.add_argument(
        "-o", "--output-dir", default=".", help="Diretório de saída"
    )
    args = parser.parse_args()

    fractions = {
        '5': 0.05,
        '15': 0.15,
        '25': 0.25,
        '50': 0.50,
        '75': 0.75
    }

    escrever_fracionados(args.input, fractions, args.output_dir)


if __name__ == "__main__":
    main()
