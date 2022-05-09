rule BWA:
	input:
		fastq = expand("results/Trimmomatic_{{sra_id}}_{split_id}_paired.fastq.gz", split_id = SPLIT_ID),
		ref = "resources/Gmax_275_v2.0.fa"
	output:
		"results/BWA_{sra_id}.bam"
	resources:
		threads = config['BWA']['cpus']
	conda:
		"../envs/bwa.yml"
	shell:
		"""
		
		### Align reads to reference genome.
		bwa mem -t {resources.threads} {input.ref} {input.fastq} | \
			samtools fixmate -u -m - - | \
                        samtools sort -u -@{resources.threads} -T results/samtools/BWA_{wildcards.sra_id} - | \
                        samtools markdup -@{resources.threads} --reference {input.ref} -O bam,level=9 - {output}

		### Index BAM file.
		samtools index -b {output}
		"""
