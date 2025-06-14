# blast
db.1 <- read.delim("results/RStudio/01-data_with_metadata/silva-138-full-blast-1-hit-90perID-metadata.txt", header = T, sep =  "\t")
db.2 <- read.delim("results/RStudio/01-data_with_metadata/silva-138-nr99-blast-1-hit-90perID-metadata.txt", header = T, sep =  "\t")
db.3 <- read.delim("results/RStudio/01-data_with_metadata/silva-138-nr99-fixed-strings-blast-1-hit-90perID-metadata.txt", header = T, sep = "\t")
db.4 <- read.delim("results/RStudio/01-data_with_metadata/silva-138-nr99-fixed-strings-custom-seq-blast-1-hit-90perID-metadata.txt", header = T, sep = "\t")
db.5 <- read.delim("results/RStudio/01-data_with_metadata/silva-138-nr99-fixed-strings-custom-seq-trimmed-blast-1-hit-90perID-metadata.txt", header = T, sep = "\t")

# naive bayes
db.1 <- read.delim("results/RStudio/01-data_with_metadata/silva-138-full-naive-70-confidence-metadata.txt", header = T, sep =  "\t")
db.2 <- read.delim("results/RStudio/01-data_with_metadata/silva-138-nr99-naive-70-confidence-metadata.txt", header = T, sep =  "\t")
db.3 <- read.delim("results/RStudio/01-data_with_metadata/silva-138-nr99-fixed-strings-naive-70-confidence-metadata.txt", header = T, sep = "\t")
db.4 <- read.delim("results/RStudio/01-data_with_metadata/silva-138-nr99-fixed-strings-custom-seq-naive-70-confidence-metadata.txt", header = T, sep = "\t")
db.5 <- read.delim("results/RStudio/01-data_with_metadata/silva-138-nr99-fixed-strings-custom-seq-trimmed-naive-70-confidence-metadata.txt", header = T, sep = "\t")

# compare individual genera
count_specific_taxa <- function(db, taxonomy_method, taxa, habitat) {
  # get counts for specific taxa
  assigned_taxa <- sum(db$Assigned_Genus == eval(taxa) & db$Genus == eval(taxa) & db$Environment == habitat)
  unassigned_taxa <- sum(db$Assigned_Genus == "Unassigned" & db$Genus == eval(taxa) & db$Environment == habitat)
  misassigned_taxa <- sum(db$Genus == eval(taxa) & db$Environment == habitat) - sum(assigned_taxa, unassigned_taxa)
  
  table <- data.frame(category = character(), 
                      environment = character(),
                      taxa = character(),
                      method = character(),
                      n = numeric())
  
  table <- add_row(table, category = "Correct", taxa = taxa, environment = habitat, method = taxonomy_method, n = assigned_taxa)
  table <- add_row(table, category = "Unassigned", taxa = taxa, environment = habitat, method = taxonomy_method, n = unassigned_taxa)
  table <- add_row(table, category = "Misassigned", taxa = taxa, environment = habitat, method = taxonomy_method, n = misassigned_taxa)
}

# extract db 1 info
db.1_sab_marine <- count_specific_taxa(db.1, "naive.90", "Sabatieria", habitat = "Marine")
db.1_des_marine <- count_specific_taxa(db.1, "naive.90", "Desmoscolex", habitat = "Marine")
db.1_chr_marine <- count_specific_taxa(db.1, "naive.90", "Chromadorita", habitat = "Marine")
db.1_acr_soil <- count_specific_taxa(db.1, "naive.90", "Acrobeles", habitat = "Terrestrial")
db.1_ple_soil <- count_specific_taxa(db.1, "naive.90", "Plectus", habitat = "Terrestrial")
db.1_aro_soil <- count_specific_taxa(db.1, "naive.90", "Acrobeloides", habitat = "Terrestrial")

# extract db 2 info
db.2_sab_marine <- count_specific_taxa(db.2, "naive.90", "Sabatieria", habitat = "Marine")
db.2_des_marine <- count_specific_taxa(db.2, "naive.90", "Desmoscolex", habitat = "Marine")
db.2_chr_marine <- count_specific_taxa(db.2, "naive.90", "Chromadorita", habitat = "Marine")
db.2_acr_soil <- count_specific_taxa(db.2, "naive.90", "Acrobeles", habitat = "Terrestrial")
db.2_ple_soil <- count_specific_taxa(db.2, "naive.90", "Plectus", habitat = "Terrestrial")
db.2_aro_soil <- count_specific_taxa(db.2, "naive.90", "Acrobeloides", habitat = "Terrestrial")

# extract db 3 info
db.3_sab_marine <- count_specific_taxa(db.3, "naive.90", "Sabatieria", habitat = "Marine")
db.3_des_marine <- count_specific_taxa(db.3, "naive.90", "Desmoscolex", habitat = "Marine")
db.3_chr_marine <- count_specific_taxa(db.3, "naive.90", "Chromadorita", habitat = "Marine")
db.3_acr_soil <- count_specific_taxa(db.3, "naive.90", "Acrobeles", habitat = "Terrestrial")
db.3_ple_soil <- count_specific_taxa(db.3, "naive.90", "Plectus", habitat = "Terrestrial")
db.3_aro_soil <- count_specific_taxa(db.3, "naive.90", "Acrobeloides", habitat = "Terrestrial")

# extract db 4 info
db.4_sab_marine <- count_specific_taxa(db.4, "naive.90", "Sabatieria", habitat = "Marine")
db.4_des_marine <- count_specific_taxa(db.4, "naive.90", "Desmoscolex", habitat = "Marine")
db.4_chr_marine <- count_specific_taxa(db.4, "naive.90", "Chromadorita", habitat = "Marine")
db.4_acr_soil <- count_specific_taxa(db.4, "naive.90", "Acrobeles", habitat = "Terrestrial")
db.4_ple_soil <- count_specific_taxa(db.4, "naive.90", "Plectus", habitat = "Terrestrial")
db.4_aro_soil <- count_specific_taxa(db.4, "naive.90", "Acrobeloides", habitat = "Terrestrial")

# extract db 5 info
db.5_sab_marine <- count_specific_taxa(db.5, "naive.90", "Sabatieria", habitat = "Marine")
db.5_des_marine <- count_specific_taxa(db.5, "naive.90", "Desmoscolex", habitat = "Marine")
db.5_chr_marine <- count_specific_taxa(db.5, "naive.90", "Chromadorita", habitat = "Marine")
db.5_acr_soil <- count_specific_taxa(db.5, "naive.90", "Acrobeles", habitat = "Terrestrial")
db.5_ple_soil <- count_specific_taxa(db.5, "naive.90", "Plectus", habitat = "Terrestrial")
db.5_aro_soil <- count_specific_taxa(db.5, "naive.90", "Acrobeloides", habitat = "Terrestrial")

plot_pie_charts_accuracy <- function(df.1, df.2, df.3, df.4, df.5, df.6, leg = "none") {
  interm_plot.1 <- ggpie(data = df.1, x = "n", fill = "category", color = "white", size = 0, label = lab) + scale_fill_manual(values = c("CadetBlue3", "Coral1", "#6c6c6c"))
  interm_plot.2 <- ggpie(data = df.2, x = "n", fill = "category", color = "white", size = 0, label = lab) + scale_fill_manual(values = c("CadetBlue3", "Coral1", "#6c6c6c"))
  interm_plot.3 <- ggpie(data = df.3, x = "n", fill = "category", color = "white", size = 0, label = lab) + scale_fill_manual(values = c("CadetBlue3", "Coral1", "#6c6c6c"))
  interm_plot.4 <- ggpie(data = df.4, x = "n", fill = "category", color = "white", size = 0, label = lab) + scale_fill_manual(values = c("CadetBlue3", "Coral1", "#6c6c6c"))
  interm_plot.5 <- ggpie(data = df.5, x = "n", fill = "category", color = "white", size = 0, label = lab) + scale_fill_manual(values = c("CadetBlue3", "Coral1", "#6c6c6c"))
  interm_plot.6 <- ggpie(data = df.6, x = "n", fill = "category", color = "white", size = 0, label = lab) + scale_fill_manual(values = c("CadetBlue3", "Coral1", "#6c6c6c"))
  final_plot <- ggarrange(interm_plot.1, interm_plot.2, interm_plot.3,
                          interm_plot.4, interm_plot.5, interm_plot.6,
                          ncol = 6, nrow = 1, common.legend = T, legend = leg)
}

lab = c ("", "", "")
db.1_plot <- plot_pie_charts_accuracy(db.1_sab_marine, db.1_des_marine, db.1_chr_marine, db.1_acr_soil, db.1_ple_soil, db.1_aro_soil, leg = "top")
db.2_plot <- plot_pie_charts_accuracy(db.2_sab_marine, db.2_des_marine, db.2_chr_marine, db.2_acr_soil, db.2_ple_soil, db.2_aro_soil)
db.3_plot <- plot_pie_charts_accuracy(db.3_sab_marine, db.3_des_marine, db.3_chr_marine, db.3_acr_soil, db.3_ple_soil, db.3_aro_soil)
db.4_plot <- plot_pie_charts_accuracy(db.4_sab_marine, db.4_des_marine, db.4_chr_marine, db.4_acr_soil, db.4_ple_soil, db.4_aro_soil)
db.5_plot <- plot_pie_charts_accuracy(db.5_sab_marine, db.5_des_marine, db.5_chr_marine, db.5_acr_soil, db.5_ple_soil, db.5_aro_soil)

# make final figure XX
final_figure_zz <- ggarrange(db.1_plot, db.2_plot, db.3_plot,db.4_plot, db.5_plot,
                             heights = c(1.5,1,1,1,1),
                             ncol = 1, nrow = 5, common.legend = T, legend = "top")
ggsave(plot = final_figure_zz, filename = "results/RStudio/04-specific_taxa_accuracy/2025-01-01-visualization_accuracy_specific_taxa_dbs.png", width = 8.5, height = 11, dpi = 300, device = "png", units = "in", bg = "white")
