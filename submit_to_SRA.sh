#!/bin/bash
#/home/jiel/.aspera/cli/bin/ascp -i /home/jiel/ssh/aspera.openssh -QT -l100m -k1 -d /home/dnalab/cecret_runs/$1/SRA_fastq subasp@upload.ncbi.nlm.nih.gov:uploads/lab.microbiology_dshs.state.tx.us_rJiZeQDA/$1
run_name=$1
SRA_fastq=/bioinformatics/Candida_auris/mycosnp-nf/output/${run_name}/SRA_fastq/*

for fastq in ${SRA_fastq}
  do
    /home/dnalab/.aspera/connect/bin/ascp -i /home/dnalab/aspera.openssh -QT -l100m -k1 -d ${fastq} subasp@upload.ncbi.nlm.nih.gov:uploads/lab.microbiology_dshs.state.tx.us_rJiZeQDA/${run_name}
  done