rule FastQC:
	input:
		"results/{sra_id}_{split_id}.fastq.gz"
	output:
		"results/fastqc/{sra_id}_{split_id}_fastqc.html"
	conda:
		"../envs/fastqc.yml"
	shell:
		"""
		fastqc \
			--outdir results/fastqc \
			{input}
		"""
