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

# have to manually visualize files and make sure genus is on the correct columns for databases without fixed taxonomy strings 
# count number of assigned and correctly assigned sequences
dir.create("results/RStudio/02-correctly_assigned_taxonomy_barplots/") # create output directory
<- function(path, method, rank) {
  temp_dir <- read.table(file = path, sep = "\t", header = T)
  temp_dir$Assigned_Family <- as.character(temp_dir$Assigned_Family)
  temp_dir$Assigned_Genus <- as.character(temp_dir$Assigned_Genus)
  temp_dir_count_taxonomy <- count_taxonomy_assignment_habitat(temp_dir, method = "blast.1.90", rank = "Family")
  return(temp_dir_count_taxonomy)
}
