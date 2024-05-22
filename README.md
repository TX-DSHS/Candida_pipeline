# Candida_pipeline

Utilizing CDC mycosnp_nf pipeline verion v1.5 Wingardium Leviosa - [05/09/2023] (https://github.com/CDCgov/mycosnp-nf) for Candida auris clade determination for Texas. 

Workflow:
1. Pull confirmed Candida auris samples from aws s3 bucket.
2. Generate samplesheet with CDC reccomended controls and confirmed Candida auris samples.
3. Run CDC mycosnp_nf pipeline.
4. Generate new QC report using QC output and Metadata file.
5. Generate SRA submission files using new QC report and Metadata file.
6. Use vcf-to-fasta file output to visualize phylogenetic tree and determine clade with MEGA. Generate phylogenetic tree pdf and newick file for reporting and REDCap submission. 
7. Submit high quality Candida auris sequencing reads to NCBI/SRA via Aspera.


Command:
1. bash mycosnptx.sh <Run_Name>
2. bash submit_to_SRA.sh <Run_Name>

![Candida_auris_workflow](https://github.com/TX-DSHS/Candida_pipeline/assets/127244776/09dcf597-eba8-4e66-805c-966d0750a007)
