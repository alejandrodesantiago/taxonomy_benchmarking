accuracy <- function(path, taxonomy_method, taxonomy_rank, tool) {
  temp_df <- read.table(path, sep = "\t", header = T)
  
  assigned_rank <- switch (taxonomy_rank,
                           Genus = "Assigned_Genus",
                           Family = "Assigned_Family",
                           Order = "Assigned_Order")

  temp_df[ ,eval(assigned_rank)] <- as.character(temp_df[ ,eval(assigned_rank)]) #make this column same factor
  
  unassigned_marine <- sum(temp_df[ ,eval(assigned_rank)] == "Unassigned" & temp_df$Environment == "Marine")
  unassigned_soil <- sum(temp_df[ ,eval(assigned_rank)] == "Unassigned" & temp_df$Environment == "Terrestrial")

  correct_marine <- sum(temp_df[ ,eval(assigned_rank)] == temp_df[ ,eval(taxonomy_rank)] & temp_df$Environment == "Marine")
  correct_soil <- sum(temp_df[ ,eval(assigned_rank)] == temp_df[ ,eval(taxonomy_rank)] & temp_df$Environment == "Terrestrial")
  
  table <- data.frame(category = character(), 
                      rank = character(), 
                      environment = character(),
                      method = character(),
                      n = numeric(),
                      tool= character())
  
  table <- add_row(table, category = "Correct", rank = taxonomy_rank, environment = "Marine", method = taxonomy_method, n = correct_marine, tool = tool)
  table <- add_row(table, category = "Misassignment", rank = taxonomy_rank, environment = "Marine", method = taxonomy_method, n = 221-(correct_marine+unassigned_marine), tool = tool)
  table <- add_row(table, category = "Correct", rank = taxonomy_rank, environment = "Terrestrial", method = taxonomy_method, n = correct_soil, tool = tool)
  table <- add_row(table, category = "Misassignment", rank = taxonomy_rank, environment = "Terrestrial", method = taxonomy_method, n = 117-(correct_soil+unassigned_soil), tool = tool)
}

