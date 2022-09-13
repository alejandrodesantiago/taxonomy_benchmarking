#!/bin/bash

#SBATCH --job-name="01-QC-database"
#SBATCH --partition=batch
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=50G
#SBATCH --time=7-00:00:00
#SBATCH --mail-user=a14556@ucr.edu
#SBATCH --mail-type=BEGIN,END,FAIL
#SBATCH -e 01-QC-database.err-%N
#SBATCH -o 01-QC-database.out-%N

cd /scratch/ad14556/taxonomy-benchmarking/ #change working directory to taxonomy benchmarking project

module load QIIME2/2022.2

qiime rescript cull-seqs \
--i-sequences databases/silva_138_full/SILVA138-full_sequences_nematode_final.qza \
--p-num-degenerates 5 \
--p-homopolymer-length 1000 \
--o-clean-sequences databases/silva_138_full/SILVA138-full_sequences_nematode_final_QC.qza
