#!/bin/sh
# properties = {"type": "single", "rule": "BWA", "local": false, "input": ["results/Trimmomatic_SRR2163311_1_paired.fastq.gz", "results/Trimmomatic_SRR2163311_2_paired.fastq.gz", "resources/Gmax_275_v2.0.fa"], "output": ["results/BWA_SRR2163311.bam"], "wildcards": {"sra_id": "SRR2163311"}, "params": {}, "log": [], "threads": 1, "resources": {"threads": 24}, "jobid": 15, "cluster": {"partition": "Lewis,hpc5,General", "time": "0-12:00", "mem": "100G", "cpus": 24, "job-name": "BWA", "output": "reports/BWA-%j.slurm.out"}}
 cd /storage/hpc/group/bilyeu/nad7wf/read_preprocessing && \
PATH='/cluster/software/conda-envs/envs/snakemake-5.3.0/bin':$PATH /cluster/software/conda-envs/envs/snakemake-5.3.0/bin/python3.6 \
-m snakemake results/BWA_SRR2163311.bam --snakefile /storage/hpc/group/bilyeu/nad7wf/read_preprocessing/workflows/read_preprocessing.smk \
--force -j --keep-target-files --keep-remote --max-inventory-time 0 \
--wait-for-files /storage/hpc/group/bilyeu/nad7wf/read_preprocessing/.snakemake/tmp.s8ddlmqp results/Trimmomatic_SRR2163311_1_paired.fastq.gz results/Trimmomatic_SRR2163311_2_paired.fastq.gz resources/Gmax_275_v2.0.fa /storage/hpc/group/bilyeu/nad7wf/read_preprocessing/.snakemake/conda/bea3a2aa --latency-wait 180 \
 --attempt 1 --force-use-threads --scheduler ilp \
\
\
--wrapper-prefix https://github.com/snakemake/snakemake-wrappers/raw/ \
 --configfiles /storage/hpc/group/bilyeu/nad7wf/read_preprocessing/config/snakemake_config.yml  --allowed-rules BWA --nocolor --notemp --no-hooks --nolock \
--mode 2  --use-conda  && touch /storage/hpc/group/bilyeu/nad7wf/read_preprocessing/.snakemake/tmp.s8ddlmqp/15.jobfinished || (touch /storage/hpc/group/bilyeu/nad7wf/read_preprocessing/.snakemake/tmp.s8ddlmqp/15.jobfailed; exit 1)

