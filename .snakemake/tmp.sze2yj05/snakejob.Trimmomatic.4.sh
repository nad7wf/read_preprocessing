#!/bin/sh
# properties = {"type": "single", "rule": "Trimmomatic", "local": false, "input": ["results/SRR2163296_1.fastq.gz", "results/SRR2163296_2.fastq.gz"], "output": ["results/Trimmomatic_SRR2163296_1_paired.fastq.gz", "results/Trimmomatic_SRR2163296_1_unpaired.fastq.gz", "results/Trimmomatic_SRR2163296_2_paired.fastq.gz", "results/Trimmomatic_SRR2163296_2_unpaired.fastq.gz"], "wildcards": {"sra_id": "SRR2163296"}, "params": {"jar": "/scratch/nad7wf/miniconda/pkgs/trimmomatic-0.39-hdfd78af_2/share/trimmomatic-0.39-2/trimmomatic.jar", "clip": "ILLUMINACLIP:TruSeq3-PE.fa:2:30:10:2:True", "leading": "LEADING:3", "trailing": "TRAILING:3", "minlen": "MINLEN:36"}, "log": [], "threads": 1, "resources": {}, "jobid": 4, "cluster": {"partition": "Lewis,hpc5,General", "time": "0-04:00", "mem": "10G", "cpus": 1, "job-name": "Trimmomatic", "output": "reports/Trimmomatic-%j.slurm.out"}}
 cd /storage/hpc/group/bilyeu/nad7wf/read_preprocessing && \
PATH='/cluster/software/conda-envs/envs/snakemake-5.3.0/bin':$PATH /cluster/software/conda-envs/envs/snakemake-5.3.0/bin/python3.6 \
-m snakemake results/Trimmomatic_SRR2163296_1_paired.fastq.gz --snakefile /storage/hpc/group/bilyeu/nad7wf/read_preprocessing/workflows/read_preprocessing.smk \
--force -j --keep-target-files --keep-remote --max-inventory-time 0 \
--wait-for-files /storage/hpc/group/bilyeu/nad7wf/read_preprocessing/.snakemake/tmp.sze2yj05 results/SRR2163296_1.fastq.gz results/SRR2163296_2.fastq.gz /storage/hpc/group/bilyeu/nad7wf/read_preprocessing/.snakemake/conda/5a0442e9 --latency-wait 180 \
 --attempt 1 --force-use-threads --scheduler ilp \
\
\
--wrapper-prefix https://github.com/snakemake/snakemake-wrappers/raw/ \
 --configfiles /storage/hpc/group/bilyeu/nad7wf/read_preprocessing/config/snakemake_config.yml  --allowed-rules Trimmomatic --nocolor --notemp --no-hooks --nolock \
--mode 2  --use-conda  && touch /storage/hpc/group/bilyeu/nad7wf/read_preprocessing/.snakemake/tmp.sze2yj05/4.jobfinished || (touch /storage/hpc/group/bilyeu/nad7wf/read_preprocessing/.snakemake/tmp.sze2yj05/4.jobfailed; exit 1)

