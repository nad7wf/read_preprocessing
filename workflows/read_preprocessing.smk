SRA_ID = list(config['ID'].values())
SPLIT_ID = [1, 2]
PAIRED = ["paired", "unpaired"]


rule all:
	input:
		#expand("results/{sra_id}_{split_id}.fastq.gz", sra_id = SRA_ID, split_id = SPLIT_ID),
		#expand("results/fastqc/{sra_id}_{split_id}_fastqc.html", sra_id = SRA_ID, split_id = SPLIT_ID),
		#expand("results/Trimmomatic_{sra_id}_{split_id}_{paired}.fastq.gz", sra_id = SRA_ID, split_id = SPLIT_ID, paired = PAIRED),
		expand("results/BWA_{sra_id}.bam", sra_id = SRA_ID),
		expand("results/SliceBam_{acc_id}_{gene}.bam", acc_id = list(config['ID'].keys()), gene = config['Gene'])

include: '../rules/FastqDump.smk'
include: '../rules/FastQC.smk'
include: '../rules/Trimmomatic.smk'
include: '../rules/BWA.smk'
include: '../rules/SliceBam.smk'
