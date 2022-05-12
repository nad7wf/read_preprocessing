#!/bin/sh
# properties = {"type": "single", "rule": "SliceBam", "local": false, "input": ["results/BWA_SRR1533233.bam"], "output": ["results/SliceBam_Xia_Hei_Dou_SRR1533233.bam"], "wildcards": {"acc_id": "Xia_Hei_Dou", "sra_id": "SRR1533233"}, "params": {"region": "Chr02:44694000-44700000"}, "log": [], "threads": 1, "resources": {}, "jobid": 1, "cluster": {"partition": "Lewis,hpc5,General", "time": "0-02:00", "mem": "1G", "cpus": 1}}
 cd /storage/hpc/group/bilyeu/nad7wf/read_preprocessing && \
PATH='/cluster/software/conda-envs/envs/snakemake-5.3.0/bin':$PATH /cluster/software/conda-envs/envs/snakemake-5.3.0/bin/python3.6 \
-m snakemake results/SliceBam_Xia_Hei_Dou_SRR1533233.bam --snakefile /storage/hpc/group/bilyeu/nad7wf/read_preprocessing/workflows/read_preprocessing.smk \
--force -j --keep-target-files --keep-remote --max-inventory-time 0 \
--wait-for-files /storage/hpc/group/bilyeu/nad7wf/read_preprocessing/.snakemake/tmp.pkar905k results/BWA_SRR1533233.bam /storage/hpc/group/bilyeu/nad7wf/read_preprocessing/.snakemake/conda/47c08e27 --latency-wait 180 \
 --attempt 1 --force-use-threads --scheduler ilp \
\
\
--wrapper-prefix https://github.com/snakemake/snakemake-wrappers/raw/ \
 --configfiles /storage/hpc/group/bilyeu/nad7wf/read_preprocessing/config/snakemake_config.yml  --allowed-rules SliceBam --nocolor --notemp --no-hooks --nolock \
--mode 2  --use-conda  && touch /storage/hpc/group/bilyeu/nad7wf/read_preprocessing/.snakemake/tmp.pkar905k/1.jobfinished || (touch /storage/hpc/group/bilyeu/nad7wf/read_preprocessing/.snakemake/tmp.pkar905k/1.jobfailed; exit 1)

