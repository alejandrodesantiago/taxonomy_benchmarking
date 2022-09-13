#!/bin/bash

#SBATCH --job-name="00-extract-reads"
#SBATCH --partition=batch
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=50G
#SBATCH --time=7-00:00:00
#SBATCH --mail-user=a14556@ucr.edu
#SBATCH --mail-type=BEGIN,END,FAIL
#SBATCH -e 00-extract-reads.err-%N
#SBATCH -o 00-extract-reads.out-%N

cd /scratch/ad14556/taxonomy-benchmarking/ #change working directory to taxonomy benchmarking project

module load QIIME2/2022.2

qiime feature-classifier extract-reads \
    --i-sequences databases/silva_138_nr99_fixed_strings_custom_seq/SILVA138-nr99_fixed_strings_custom_seq_sequences_QC.qza \
    --p-f-primer GCTTGTCTCAAAGATTAAGCC \
    --p-r-primer GCCTGCTGCCTTCCTTGGA \
    --p-identity 0.7 \
    --o-reads databases/silva_138_nr99_fixed_strings_custom_seq_trimmed/SILVA138-nr99_fixed_strings_custom_seq_trimmed_sequences_QC.qza
