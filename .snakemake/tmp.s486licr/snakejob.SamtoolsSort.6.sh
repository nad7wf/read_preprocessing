#!/bin/sh
# properties = {"type": "single", "rule": "SamtoolsSort", "local": false, "input": ["results/BWA_SRR2163296.bam", "resources/Gmax_275_v2.0.fa"], "output": ["results/SamtoolsSort_SRR2163296.bam", "results/samtools/BWA_SRR2163296"], "wildcards": {"sra_id": "SRR2163296"}, "params": {}, "log": [], "threads": 1, "resources": {"threads": 10}, "jobid": 6, "cluster": {"partition": "Lewis,hpc5,General", "time": "0-04:00", "mem": "20G", "cpus": 10, "job-name": "SamtoolsSort", "output": "reports/SamtoolsSort-%j.slurm.out"}}
 cd /storage/hpc/group/bilyeu/nad7wf/read_preprocessing && \
PATH='/cluster/software/conda-envs/envs/snakemake-5.3.0/bin':$PATH /cluster/software/conda-envs/envs/snakemake-5.3.0/bin/python3.6 \
-m snakemake results/SamtoolsSort_SRR2163296.bam --snakefile /storage/hpc/group/bilyeu/nad7wf/read_preprocessing/workflows/read_preprocessing.smk \
--force -j --keep-target-files --keep-remote --max-inventory-time 0 \
--wait-for-files /storage/hpc/group/bilyeu/nad7wf/read_preprocessing/.snakemake/tmp.s486licr results/BWA_SRR2163296.bam resources/Gmax_275_v2.0.fa /storage/hpc/group/bilyeu/nad7wf/read_preprocessing/.snakemake/conda/bea3a2aa --latency-wait 180 \
 --attempt 1 --force-use-threads --scheduler ilp \
\
\
--wrapper-prefix https://github.com/snakemake/snakemake-wrappers/raw/ \
 --configfiles /storage/hpc/group/bilyeu/nad7wf/read_preprocessing/config/snakemake_config.yml  --allowed-rules SamtoolsSort --nocolor --notemp --no-hooks --nolock \
--mode 2  --use-conda  && touch /storage/hpc/group/bilyeu/nad7wf/read_preprocessing/.snakemake/tmp.s486licr/6.jobfinished || (touch /storage/hpc/group/bilyeu/nad7wf/read_preprocessing/.snakemake/tmp.s486licr/6.jobfailed; exit 1)

