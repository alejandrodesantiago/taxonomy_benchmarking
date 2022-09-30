count_taxonomy <- function(path, taxonomy_method, taxonomy_rank) {
  temp_df <- read.table(path, sep = "\t", header = T)
  temp_df$Assigned_Family <- as.character(temp_df$Assigned_Family)
  temp_df$Assigned_Genus <- as.character(temp_df$Assigned_Genus)  
  
  if (taxonomy_rank == "Genus"){
    assigned <- "Assigned_Genus"
    marine_correct <- sum(temp_df$Environment == "Marine" & temp_df$Assigned_Genus == temp_df$Genus)
    terrestrial_correct <- sum(temp_df$Environment == "Terrestrial" & temp_df$Assigned_Genus == temp_df$Genus)
    number.unassigned <- temp_df %>% count(Assigned_Genus == "Unassigned", assigned, Environment) # count number of assigned reads
  }
  
  else if (taxonomy_rank == "Family"){
    assigned <- "Assigned_Family"
    marine_correct <- sum(temp_df$Environment == "Marine" & temp_df$Assigned_Family == temp_df$Family)
    terrestrial_correct <- sum(temp_df$Environment == "Terrestrial" & temp_df$Assigned_Family == temp_df$Family)
    number.unassigned <- temp_df %>% count(Assigned_Family == "Unassigned", assigned, Environment) # count number of assigned reads
  }
  
  # count number of assigned taxa
  number.unassigned <- number.unassigned %>% rename(category = names(.)[1])
  number.unassigned <- tibble(number.unassigned)
  number.unassigned <- number.unassigned %>% add_column(method = taxonomy_method)
  number.unassigned <- number.unassigned[!number.unassigned$category == "TRUE",]
  number.unassigned <- mutate_if(number.unassigned, is.logical, str_replace_all, pattern = "FALSE", replacement = "Assigned")
  
  if (taxonomy_rank == "Genus"){
    number.unassigned <- mutate_if(number.unassigned, is.character, str_replace_all, pattern = "Assigned_Genus", replacement = "Genus")
    number.unassigned <- add_row(number.unassigned, category = "Correct", assigned = "Genus", Environment = "Marine", n = marine_correct, method = taxonomy_method)
    number.unassigned <- add_row(number.unassigned, category = "Correct", assigned = "Genus", Environment = "Terrestrial", n = terrestrial_correct, method = taxonomy_method)
  }
  
  else if (taxonomy_rank == "Family"){
    number.unassigned <- mutate_if(number.unassigned, is.character, str_replace_all, pattern = "Assigned_Family", replacement = "Family")
    number.unassigned <- add_row(number.unassigned, category = "Correct", assigned = "Family", Environment = "Marine", n = marine_correct, method = taxonomy_method)
    number.unassigned <- add_row(number.unassigned, category = "Correct", assigned = "Family", Environment = "Terrestrial", n = terrestrial_correct, method = taxonomy_method)
  }
#  temp_df_count <- count_taxonomy_assignment_habitat(temp_df, method = taxonomy_method, rank = taxonomy_rank)
}

