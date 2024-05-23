# Candida_pipeline

Utilizing CDC mycosnp_nf pipeline verion v1.5 Wingardium Leviosa - [05/09/2023] (https://github.com/CDCgov/mycosnp-nf) for Candida auris clade determination for Texas. 
Per CDC guidelines , the reference used is : GCA_016772135.1_ASM1677213v1_genomic.fna (B11205)
| For Clade controls: |     |      |    |    |
| ------------------- | --- | ---- | -- | -- |
| Clade	| Strain | BioSample | SRA | GenBank |
| ----- | ------ | --------- | --- | ------- |
| Clade I (South Asia) | B11205 | SAMN18754597 | SRR14252434 | GCA_016772135.1_ASM1677213v1_genomic.fna |
| Clade II (East Asia) | B11220 | SAMN05379608 | SRR14906880 | GCA_003013715.2_ASM301371v2_genomic.fna |
| Clade III (Africa) | B11221 | SAMN05379609 | SRR3883453 | GCA_002775015.1_Cand_auris_B11221_V1_genomic.fna |
| Clade IV (South America) | B11243 | SAMN05379621 | SRR3883466 | GCA_003014415.1_Cand_auris_B11243_genomic.fna |
| Clade V (Iranian) | IRFC2087 | SAMN11570381 | SRR9007776 | GCA_016809505.1_ASM1680950v1_genomic.fna |



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
