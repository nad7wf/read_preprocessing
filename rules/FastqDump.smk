rule FastqDump:
	output:
		temp(expand("results/{{sra_id}}_{split_id}.fastq.gz", split_id = SPLIT_ID))
	params:
		sra_id = "{sra_id}"
	conda:
		"../envs/sra.yml"
	shell:
		"""
		fastq-dump \
			--gzip \
			--origfmt \
			--split-files \
			--outdir results \
			{params.sra_id}
		"""
