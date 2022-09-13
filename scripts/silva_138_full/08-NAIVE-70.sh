#!/bin/sh
#SBATCH --job-name="NAIVE"
#SBATCH --partition=batch
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=50G
#SBATCH --time=7-00:00:00
#SBATCH --mail-user=ad14556@uga.edu
#SBATCH --mail-type=BEGIN,END,FAIL
#SBATCH -e NAIVE.err-%N
#SBATCH -o NAIVE.out-%N

cd /scratch/ad14556/taxonomy-benchmarking/ #change working directory to taxonomy benchmarking project

module load QIIME2/2022.2

qiime feature-classifier classify-sklearn \
  --i-reads results/qiime2/01-taxonomy_benchmarking_test_dataset.qza \
  --i-classifier databases/silva_138_full/SILVA138-full-naive-classifier.qza \
  --p-confidence .70 \
  --o-classification results/qiime2/taxonomy_assignment/silva_138_full/silva-138-fill-naive-70-confidence.qza
