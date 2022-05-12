rule SliceBam:
	input:
		bam = lambda wildcards: expand("results/BWA_{sra_id}.bam", sra_id = config['ID'][wildcards.acc_id]),
		bai = lambda wildcards: expand("results/BWA_{sra_id}.bam.bai", sra_id = config['ID'][wildcards.acc_id])
	output:
		"results/SliceBam_{acc_id}_{gene}.bam"
	params:
		region = config['Slice']
	conda:
		"../envs/slice.yml"
	shell:
		"""

		### Slice BAM file to only include selected region. ###
		samtools view {input.bam} {params.region} -O bam,level=9 > {output}

		### Index BAM file. ###
		samtools index -b {output}

		"""
