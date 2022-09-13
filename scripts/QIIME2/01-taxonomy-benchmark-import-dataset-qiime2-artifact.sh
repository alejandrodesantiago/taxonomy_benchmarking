#!/bin/bash

#SBATCH --job-name="import-taxonomy-dataset"
#SBATCH --partition=batch
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=50G
#SBATCH --time=7-00:00:00
#SBATCH --mail-user=a14556@ucr.edu
#SBATCH --mail-type=BEGIN,END,FAIL
#SBATCH -e 01-import-taxonomy-benchmark-dataset-qiime2-artifact.err-%N
#SBATCH -o 01-import-taxonomy-benchmark-dataset-qiime2-artifact.out-%N

#Path Variables
INPUT=/scratch/ad14556/taxonomy-benchmarking/data/taxonomy_benchmarking_test_dataset_trimmed_genious.fasta
OUTPUT=/scratch/ad14556/taxonomy-benchmarking/results/qiime2/01-taxonomy_benchmarking_test_dataset.qza

#Activate QIIME2
module load QIIME2/2022.2

#Script
qiime tools import \
--input-path $INPUT \
--output-path $OUTPUT \
--type 'FeatureData[Sequence]'

