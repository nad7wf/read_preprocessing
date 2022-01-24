#!/bin/sh
# properties = {"type": "single", "rule": "BWA", "local": false, "input": ["results/Trimmomatic_SRR2163296_1_paired.fastq.gz", "results/Trimmomatic_SRR2163296_1_unpaired.fastq.gz", "results/Trimmomatic_SRR2163296_2_paired.fastq.gz", "results/Trimmomatic_SRR2163296_2_unpaired.fastq.gz"], "output": ["results/BWA_SRR2163296.bam"], "wildcards": {"sra_id": "SRR2163296"}, "params": {}, "log": [], "threads": 1, "resources": {"ref": "../resources/Gmax_275_v2.0.fa"}, "jobid": 5, "cluster": {"partition": "Lewis,hpc5,General", "time": "0-02:00", "mem": "1G", "cpus": 1}}
 cd /storage/hpc/group/bilyeu/nad7wf/read_preprocessing && \
PATH='/cluster/software/conda-envs/envs/snakemake-5.3.0/bin':$PATH /cluster/software/conda-envs/envs/snakemake-5.3.0/bin/python3.6 \
-m snakemake results/BWA_SRR2163296.bam --snakefile /storage/hpc/group/bilyeu/nad7wf/read_preprocessing/workflows/read_preprocessing.smk \
--force -j --keep-target-files --keep-remote --max-inventory-time 0 \
--wait-for-files /storage/hpc/group/bilyeu/nad7wf/read_preprocessing/.snakemake/tmp.mh_k76r3 results/Trimmomatic_SRR2163296_1_paired.fastq.gz results/Trimmomatic_SRR2163296_1_unpaired.fastq.gz results/Trimmomatic_SRR2163296_2_paired.fastq.gz results/Trimmomatic_SRR2163296_2_unpaired.fastq.gz /storage/hpc/group/bilyeu/nad7wf/read_preprocessing/.snakemake/conda/bea3a2aa --latency-wait 180 \
 --attempt 1 --force-use-threads --scheduler ilp \
\
\
--wrapper-prefix https://github.com/snakemake/snakemake-wrappers/raw/ \
 --configfiles /storage/hpc/group/bilyeu/nad7wf/read_preprocessing/config/snakemake_config.yml  --allowed-rules BWA --nocolor --notemp --no-hooks --nolock \
--mode 2  --use-conda  && touch /storage/hpc/group/bilyeu/nad7wf/read_preprocessing/.snakemake/tmp.mh_k76r3/5.jobfinished || (touch /storage/hpc/group/bilyeu/nad7wf/read_preprocessing/.snakemake/tmp.mh_k76r3/5.jobfailed; exit 1)

