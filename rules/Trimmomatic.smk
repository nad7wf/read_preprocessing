rule Trimmomatic:
	input:
		expand("results/{{sra_id}}_{split_id}.fastq.gz", split_id = [1, 2])
	output:
		expand("results/Trimmomatic_{{sra_id}}_{split_id}_{paired}.fastq.gz", split_id = [1, 2], paired = ["paired", "unpaired"])
	params:
		jar = "/scratch/nad7wf/miniconda/pkgs/trimmomatic-0.39-hdfd78af_2/share/trimmomatic-0.39-2/trimmomatic.jar",
		clip = "ILLUMINACLIP:TruSeq3-PE.fa:2:30:10:2:True",
		leading = "LEADING:3",
		trailing = "TRAILING:3",
		minlen = "MINLEN:36"
	conda:
		"../envs/trimmomatic.yml"
	shell:
		"""
		java \
			-jar {params.jar} \
			PE \
			{input} \
			{output} \
			{params.clip} \
			{params.leading} \
			{params.trailing} \
			{params.minlen}
		"""
