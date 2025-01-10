import subprocess


# removing the new line characters
with open("/home/dnalab/Candida_auris/CA_121024_epi/CA_121024_epi.txt") as f:
  lines = [line.rstrip() for line in f]
 
print(lines)

# this will extract the .sra files from above into a folder named 'fastq' for sra_id in sra_numbers:
for sra_id in lines:
  print ("Generating fastq for: " + sra_id)
  fastq_dump = "/home/jessr/sratoolkit.3.1.0-ubuntu64/bin/fastq-dump " + sra_id + " --split-files --outdir /home/dnalab/Candida_auris/CA_121024_epi/"
  print ("The command used was: " + fastq_dump)
  subprocess.call(fastq_dump, shell=True)