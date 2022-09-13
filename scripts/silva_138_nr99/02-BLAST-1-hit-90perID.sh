#!/bin/sh
#SBATCH --job-name="02-BLAST-1-hit-90perID.sh"
#SBATCH --partition=batch
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=50G
#SBATCH --time=7-00:00:00
#SBATCH --mail-user=a14556@ucr.edu
#SBATCH --mail-type=BEGIN,END,FAIL
#SBATCH -e BLAST.err-%N
#SBATCH -o BLAST.out-%N

cd /scratch/ad14556/taxonomy-benchmarking/ #change working directory to taxonomy benchmarking project

module load QIIME2/2022.2

qiime feature-classifier classify-consensus-blast \
  --i-query  results/qiime2/01-taxonomy_benchmarking_test_dataset.qza \
  --i-reference-reads databases/silva_138_nr99/SILVA138-nr99_sequences_QC.qza \
  --i-reference-taxonomy databases/silva_138_nr99/SILVA138-nr99_taxonomy.qza \
  --p-maxaccepts 1 \
  --p-perc-identity .9 \
  --o-classification results/qiime2/taxonomy_assignment/silva_138_nr99/silva-138-nr99-blast-1-hit-90perID.qza
