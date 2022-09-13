#!/bin/bash

#SBATCH --job-name="NAIVE"
#SBATCH --partition=batch
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=50G
#SBATCH --time=7-00:00:00
#SBATCH --mail-user=a14556@ucr.edu
#SBATCH --mail-type=BEGIN,END,FAIL
#SBATCH -e NAIVE.err-%N
#SBATCH -o NAIVE.out-%N

cd /scratch/ad14556/taxonomy-benchmarking/ #change working directory to taxonomy benchmarking project

module load QIIME2/2022.2

qiime feature-classifier fit-classifier-naive-bayes \
  --i-reference-reads databases/silva_138_full/SILVA138-full_sequences_nematode_final_QC.qza \
  --i-reference-taxonomy databases/silva_138_full/SILVA138-full_taxonomy_nematode.qza \
  --o-classifier databases/silva_138_full/SILVA138-full-naive-classifier.qza
