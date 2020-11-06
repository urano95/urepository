rule fastqc:
    input:
        "mapped_reads/{sample}.bam"
    output:
        html="qc/fastqc/{sample}.html",
        zip="qc/fastqc/{sample}_fastqc.zip" # the suffix _fastqc.zip is necessary for multiqc to find the file. If not using multiqc, you are free to choose an arbitrary filename
    params: ""
    log:
        "logs/fastqc/{sample}.log"
    threads: 1
    wrapper:
        "0.67.0/bio/fastqc"