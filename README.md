Pipeline For SNP analysis 
-------------------------

### A. Quality Control


### B. Remove redundancy using script removeRedundancy.pl (not finished)
    $removeRedundancy.pl  read_1  read_2[option]
    * read_2 is for paired-end
    * support paired-end and single-end reads
    * For remove redundancy on PE reads, using PE_align.pl to make PE reads alignment.

### C. Prepare list file for pipeline

    * list file format
    cultivarA cultivarA_rep1.fa cultivarA_rep2.fa cultivarA_rep3.fa ... cultivarA_repN.fa
    cultivarB cultivarB_rep1.fa cultivarB_rep2.fa cultivarB_rep3.fa ... cultivarB_repN.fa

### D. Prepare comparison file [option]

    * list file for comparison
    cultivarA cultivarB

### E. Run Map SNP pipeline

    $MaoSNP_pipeline.pl list_file  comparison_file > run_cmd.sh

    Edit the run_cmd.sh file if required

    $./run_cmd.sh


