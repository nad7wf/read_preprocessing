#!/bin/sh
# properties = {"type": "single", "rule": "FastqDump", "local": false, "input": [], "output": ["results/SRR2163296_1.fastq.gz", "results/SRR2163296_2.fastq.gz"], "wildcards": {"sra_id": "SRR2163296"}, "params": {"sra_id": "SRR2163296"}, "log": [], "threads": 1, "resources": {}, "jobid": 1, "cluster": {"partition": "Lewis,hpc5,General", "time": "0-12:00", "mem": "60G", "cpus": 1, "job-name": "FastqDump", "output": "reports/FastqDump-%j.slurm.out"}}
 cd /storage/hpc/group/bilyeu/nad7wf/read_preprocessing && \
PATH='/cluster/software/conda-envs/envs/snakemake-5.3.0/bin':$PATH /cluster/software/conda-envs/envs/snakemake-5.3.0/bin/python3.6 \
-m snakemake results/SRR2163296_1.fastq.gz --snakefile /storage/hpc/group/bilyeu/nad7wf/read_preprocessing/workflows/read_preprocessing.smk \
--force -j --keep-target-files --keep-remote --max-inventory-time 0 \
--wait-for-files /storage/hpc/group/bilyeu/nad7wf/read_preprocessing/.snakemake/tmp.6738svg8 /storage/hpc/group/bilyeu/nad7wf/read_preprocessing/.snakemake/conda/e80f4ee0 --latency-wait 180 \
 --attempt 1 --force-use-threads --scheduler ilp \
\
\
--wrapper-prefix https://github.com/snakemake/snakemake-wrappers/raw/ \
 --configfiles /storage/hpc/group/bilyeu/nad7wf/read_preprocessing/config/snakemake_config.yml  --allowed-rules FastqDump --nocolor --notemp --no-hooks --nolock \
--mode 2  --use-conda  && touch /storage/hpc/group/bilyeu/nad7wf/read_preprocessing/.snakemake/tmp.6738svg8/1.jobfinished || (touch /storage/hpc/group/bilyeu/nad7wf/read_preprocessing/.snakemake/tmp.6738svg8/1.jobfailed; exit 1)

