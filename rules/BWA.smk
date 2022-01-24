rule BWA:
	input:
		expand("results/Trimmomatic_{{sra_id}}_{split_id}_paired.fastq.gz", split_id = SPLIT_ID)
	output:
		out_file = "results/BWA_{sra_id}.bam",
		out_tmp_dir = temp(directory("results/samtools/BWA_{sra_id}"))
	resources:
		ref = "resources/Gmax_275_v2.0.fa"
	conda:
		"../envs/bwa.yml"
	shell:
		"""
		bwa mem \
			{resources.ref} \
			{input} | \
			samtools fixmate -u -m - - | \
			samtools sort -T {output.out_tmp_dir} - | \ 
			samtools markdup - | \
			samtools view > {output.out_file}
		"""
