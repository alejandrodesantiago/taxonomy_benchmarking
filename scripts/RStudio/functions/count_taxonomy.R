count_taxonomy <- function(file, algorithm, db, rank, mock = F, tool) {
  temp_file <- read.table(file, sep = "\t", header = T) # read file
  
  if (mock == F) {

    assigned_rank <- switch (rank,
                             Genus = "Assigned_Genus",
                             Family = "Assigned_Family",
                             Order = "Assigned_Order")
    
    temp_file[[assigned_rank]] <- as.character(temp_file[[assigned_rank]])
    sum_unique <- as.data.frame(table(temp_file[[assigned_rank]], temp_file$Environment))
    
  }
  
  else {
    
    assigned_rank <- switch (rank,
                             Genus = "Genus",
                             Family = "Family",
                             Order = "Order")
    
  
    temp_file[[assigned_rank]] <- as.character(temp_file[[assigned_rank]])
    sum_unique <- as.data.frame(table(temp_file[[assigned_rank]], temp_file$Environment))
    
  }
  
  sum_unique$database <- algorithm
  sum_unique$method <- db
  sum_unique$tool <- tool
  
  return(sum_unique)
}
