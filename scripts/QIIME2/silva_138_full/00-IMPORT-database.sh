#!/bin/bash

#SBATCH --job-name="00-IMPORT-database"
#SBATCH --partition=batch
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=50G
#SBATCH --time=7-00:00:00
#SBATCH --mail-user=a14556@ucr.edu
#SBATCH --mail-type=BEGIN,END,FAIL
#SBATCH -e 00-IMPORT-database.err-%N
#SBATCH -o 00-IMPORT-database.out-%N

cd /scratch/ad14556/taxonomy-benchmarking/ #change working directory to taxonomy benchmarking project

module load QIIME2/2022.2

qiime tools import \
  --type 'FeatureData[Sequence]' \
  --input-path databases/silva_138_full/SILVA138-full_sequences_nematode_final.fa \
  --output-path databases/silva_138_full/SILVA138-full_sequences_nematode_final.qza

qiime tools import \
  --type 'FeatureData[Taxonomy]' \
  --input-format HeaderlessTSVTaxonomyFormat \
  --input-path databases/silva_138_full/SILVA138-full_taxonomy_nematode.txt \
  --output-path databases/silva_138_full/SILVA138-full_taxonomy_nematode.qza
