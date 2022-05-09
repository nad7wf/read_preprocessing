#!/bin/sh
# properties = {"type": "single", "rule": "FastqDump", "local": false, "input": [], "output": ["results/SRR1533253_1.fastq.gz", "results/SRR1533253_2.fastq.gz"], "wildcards": {"sra_id": "SRR1533253"}, "params": {"sra_id": "SRR1533253"}, "log": [], "threads": 1, "resources": {}, "jobid": 27, "cluster": {"partition": "Lewis,hpc5,General", "time": "0-04:00", "mem": "1G", "cpus": 1, "job-name": "FastqDump", "output": "reports/FastqDump-%j.slurm.out"}}
 cd /storage/hpc/group/bilyeu/nad7wf/read_preprocessing && \
PATH='/cluster/software/conda-envs/envs/snakemake-5.3.0/bin':$PATH /cluster/software/conda-envs/envs/snakemake-5.3.0/bin/python3.6 \
-m snakemake results/SRR1533253_1.fastq.gz --snakefile /storage/hpc/group/bilyeu/nad7wf/read_preprocessing/workflows/read_preprocessing.smk \
--force -j --keep-target-files --keep-remote --max-inventory-time 0 \
--wait-for-files /storage/hpc/group/bilyeu/nad7wf/read_preprocessing/.snakemake/tmp.ggiy703i /storage/hpc/group/bilyeu/nad7wf/read_preprocessing/.snakemake/conda/e80f4ee0 --latency-wait 180 \
 --attempt 1 --force-use-threads --scheduler ilp \
\
\
--wrapper-prefix https://github.com/snakemake/snakemake-wrappers/raw/ \
 --configfiles /storage/hpc/group/bilyeu/nad7wf/read_preprocessing/config/snakemake_config.yml  --allowed-rules FastqDump --nocolor --notemp --no-hooks --nolock \
--mode 2  --use-conda  && touch /storage/hpc/group/bilyeu/nad7wf/read_preprocessing/.snakemake/tmp.ggiy703i/27.jobfinished || (touch /storage/hpc/group/bilyeu/nad7wf/read_preprocessing/.snakemake/tmp.ggiy703i/27.jobfailed; exit 1)

