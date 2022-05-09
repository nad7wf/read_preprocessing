rule SamtoolsSort:
	input:
		bam = "results/BWA_{sra_id}.bam",
		ref = "resources/Gmax_275_v2.0.fa"
	output:
		out_file = "results/SamtoolsSort_{sra_id}.bam"
	resources:
		threads = config['SamtoolsSort']['cpus']
	conda:
		"../envs/bwa.yml"
	shell:
		"""
		        samtools fixmate -u -m {input.bam} - | \
                        samtools sort -u -@{resources.threads} -T results/samtools/BWA_{wildcards.sra_id} - | \
                        samtools markdup -@{resources.threads} --reference {input.ref} -O bam,level=9 - {output.out_file}
		"""
