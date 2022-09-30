library(splitstackshape)
library(qiime2R)
library(plyr)
library(dplyr)
library(tidyr)
library(ggplot2)
library(stringr)
library(tibble)
library(forcats)
library(cowplot)

sapply(list.files(path = "scripts/RStudio/functions/", full.names = T,), source) #read all functions to environment
metadata <- read.table("data/taxonomy_benchmarking_test_dataset_metadata.txt", sep = "\t" , header = T) #read metadata 

######### import all qiime2 outputs, append metadata, and save files
file_list_qza <- list.files(path="results/qiime2/taxonomy_assignment", pattern = ".qza", full.names = T, recursive = T) # get list of all data into R

dir.create("results/RStudio/01-data_with_metadata/") # create output directory
for (i in 1:length(file_list_qza)) { # for loop to add metadata to each file and save files
  temp_file <- read_taxonomy_qza(file = file_list_qza[i]) # read taxonomy 
  temp_file_inc_metadata <- as.data.frame(merge(temp_file, metadata, by.x = "Feature.ID", by.y = "SampleID")) # merge taxonomy results with metadata
  temp_file_sans_ext <- tools::file_path_sans_ext(file_list_qza[i]) #remove extension
  temp_file_basename <- paste0(basename(temp_file_sans_ext), "-metadata") # remove path
  write.table(temp_file_inc_metadata, file=paste0("results/RStudio/01-data_with_metadata/", temp_file_basename, ".txt"), quote=FALSE, sep='\t', col.names = T, row.names = F) # write table into the new directory
}

####
# GET TAXONOMY ACCURACY
####

# have to manually visualize files and make sure genus is on the correct columns for databases without fixed taxonomy strings 
# count number of unassigned and correctly assigned sequences
dir.create("results/RStudio/02-correctly_assigned_taxonomy_barplots/") # create output directory

# full silva 138 database
silva_138_full_blast_1_hit_90 <- count_taxonomy(path = "results/RStudio/01-data_with_metadata/silva-138-full-blast-1-hit-90perID-metadata.txt", "blast.1.90", "Genus")
silva_138_full_blast_1_hit_95 <- count_taxonomy(path = "results/RStudio/01-data_with_metadata/silva-138-full-blast-1-hit-95perID-metadata.txt", "blast.1.95", "Genus")
silva_138_full_blast_1_hit_99 <- count_taxonomy(path = "results/RStudio/01-data_with_metadata/silva-138-full-blast-1-hit-99perID-metadata.txt", "blast.1.99", "Genus")
silva_138_full_blast_3_hit_90 <- count_taxonomy(path = "results/RStudio/01-data_with_metadata/silva-138-full-blast-3-hit-90perID-metadata.txt", "blast.3.90", "Genus")
silva_138_full_blast_10_hit_95 <- count_taxonomy(path = "results/RStudio/01-data_with_metadata/silva-138-full-blast-10-hit-95perID-metadata.txt", "blast.10.95", "Genus")
silva_138_full_naive_conf_70 <- count_taxonomy(path = "results/RStudio/01-data_with_metadata/silva-138-full-naive-70-confidence-metadata.txt", "naive.70", "Genus")
silva_138_full_naive_conf_80 <- count_taxonomy(path = "results/RStudio/01-data_with_metadata/silva-138-full-naive-80-confidence-metadata.txt", "naive.80", "Genus")
silva_138_full_naive_conf_90 <- count_taxonomy(path = "results/RStudio/01-data_with_metadata/silva-138-full-naive-90-confidence-metadata.txt", "naive.90", "Genus")

silva138_full_correct <- Reduce(function(x, y) merge(x, y, all=TRUE), 
                                list(silva_138_full_blast_1_hit_90, silva_138_full_blast_1_hit_95,
                                     silva_138_full_blast_1_hit_99, silva_138_full_blast_3_hit_90,
                                     silva_138_full_blast_10_hit_95, silva_138_full_naive_conf_70,
                                     silva_138_full_naive_conf_80, silva_138_full_naive_conf_90))
silva138_full_taxa_correct_barplot <- barchart_taxonomy_accuracy(silva138_full_correct)
ggsave(plot = silva138_full_taxa_correct_barplot, "results/RStudio/02-correctly_assigned_taxonomy_barplots/2022-09-28-visualization_taxonomy_assignments_accuracy_silva138_full_genus.png", height = 11.5, width = 8, units = "in", device = "png", dpi = 300)

# silva 138 nr99
silva_138_nr00_blast_1_hit_90 <- count_taxonomy(path = "results/RStudio/01-data_with_metadata/silva-138-nr99-blast-1-hit-90perID-metadata.txt", "blast.1.90", "Genus")
silva_138_nr00_blast_1_hit_95 <- count_taxonomy(path = "results/RStudio/01-data_with_metadata/silva-138-nr99-blast-1-hit-95perID-metadata.txt", "blast.1.90", "Genus")

silva_138_nr00_naive_conf_90 <- count_taxonomy(path = "results/RStudio/01-data_with_metadata/silva-138-nr99-naive-90-confidence-metadata.txt", "blast.1.90", "Genus")

silva138_nr99_taxa_correct_barplot <- barchart_taxonomy_accuracy(silva_138_nr00_naive_conf_90)
silva138_nr99_taxa_correct_barplot
