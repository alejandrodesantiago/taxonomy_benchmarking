### read qza files from directory
read_taxonomy_qza <- function(file = "") {
  input_df <- read_qza(file)
  input_df_split <- cSplit(data.frame(input_df$data), "Taxon", sep=";", drop=TRUE)
  return(input_df_split)
}
