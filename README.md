Pipeline For SNP analysis 
-------------------------

### A. Quality Control

### B. Prepare list file for pipeline

    * list file format
    cultivarA cultivarA_rep1.fa cultivarA_rep2.fa cultivarA_rep3.fa ... cultivarA_repN.fa
    cultivarB cultivarB_rep1.fa cultivarB_rep2.fa cultivarB_rep3.fa ... cultivarB_repN.fa

### C. Prepare comparison list file [option]

    * list file for comparison
    cultivarA cultivarB

### D. Remove redundancy using script removeRedundancy.pl
    
    $removeRedundancy.pl  read_1  read_2[option]
    * read_2 is for paired-end
    * support paired-end and single-end reads
    * For remove redundancy on PE reads, using PE_align.pl to make PE reads alignment.

### E. Run Map SNP pipeline

    Add pileup info to SNP result

### F. Generate col for reference genome

