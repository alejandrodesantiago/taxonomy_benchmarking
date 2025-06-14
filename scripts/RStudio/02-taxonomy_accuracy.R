####
# GET TAXONOMY ACCURACY
####

# have to manually visualize files and make sure Genus is on the correct columns for databases without fixed taxonomy strings 
# count number of unassigned and  misassigned sequences
# for different taxonomy rank (i.e., Order, Family, or Genus) change the parameter
dir.create("results/RStudio/02-accuracy-barcharts/") # create output directory


# full silva 138 database
silva_138_full_blast_1_hit_90 <- accuracy(path = "results/RStudio/01-data_with_metadata/silva-138-full-blast-1-hit-90perID-metadata.txt", "blast.1.90", "Genus", "Blast")
silva_138_full_blast_1_hit_95 <- accuracy(path = "results/RStudio/01-data_with_metadata/silva-138-full-blast-1-hit-95perID-metadata.txt", "blast.1.95", "Genus", "Blast")
silva_138_full_blast_1_hit_99 <- accuracy(path = "results/RStudio/01-data_with_metadata/silva-138-full-blast-1-hit-99perID-metadata.txt", "blast.1.99", "Genus", "Blast")
silva_138_full_blast_3_hit_90 <- accuracy(path = "results/RStudio/01-data_with_metadata/silva-138-full-blast-3-hit-90perID-metadata.txt", "blast.3.90", "Genus", "Blast")
silva_138_full_blast_10_hit_95 <- accuracy(path = "results/RStudio/01-data_with_metadata/silva-138-full-blast-10-hit-95perID-metadata.txt", "blast.10.95", "Genus", "Blast")
silva_138_full_naive_conf_70 <- accuracy(path = "results/RStudio/01-data_with_metadata/silva-138-full-naive-70-confidence-metadata.txt", "naive.70", "Genus", "Naive Bayes")
silva_138_full_naive_conf_80 <- accuracy(path = "results/RStudio/01-data_with_metadata/silva-138-full-naive-80-confidence-metadata.txt", "naive.80", "Genus", "Naive Bayes")
silva_138_full_naive_conf_90 <- accuracy(path = "results/RStudio/01-data_with_metadata/silva-138-full-naive-90-confidence-metadata.txt", "naive.90", "Genus","Naive Bayes")

silva138_full_correct <- Reduce(function(x, y) merge(x, y, all=TRUE), 
                                list(silva_138_full_blast_1_hit_90, silva_138_full_blast_1_hit_95,
                                     silva_138_full_blast_1_hit_99, silva_138_full_blast_3_hit_90,
                                     silva_138_full_blast_10_hit_95, silva_138_full_naive_conf_70,
                                     silva_138_full_naive_conf_80, silva_138_full_naive_conf_90))
silva138_full_correct$database <- "Database 1"

silva138_full_taxa_correct_barplot <- barchart_taxonomy_accuracy(silva138_full_correct) +
  ylab("Number of Sequences\n") + xlab("\nSILVA REF") +
  theme(strip.background = element_blank(), strip.text.y = element_blank()) 


# silva 138 nr99
silva_138_nr99_blast_1_hit_90 <- accuracy(path = "results/RStudio/01-data_with_metadata/silva-138-nr99-blast-1-hit-90perID-metadata.txt", "blast.1.90", "Genus", "Blast")
silva_138_nr99_blast_1_hit_95 <- accuracy(path = "results/RStudio/01-data_with_metadata/silva-138-nr99-blast-1-hit-95perID-metadata.txt", "blast.1.95", "Genus", "Blast")
silva_138_nr99_blast_1_hit_99 <- accuracy(path = "results/RStudio/01-data_with_metadata/silva-138-nr99-blast-1-hit-99perID-metadata.txt", "blast.1.99", "Genus", "Blast")
silva_138_nr99_blast_3_hit_90 <- accuracy(path = "results/RStudio/01-data_with_metadata/silva-138-nr99-blast-3-hit-90perID-metadata.txt", "blast.3.90", "Genus", "Blast")
silva_138_nr99_blast_10_hit_95 <- accuracy(path = "results/RStudio/01-data_with_metadata/silva-138-nr99-blast-10-hit-95perID-metadata.txt", "blast.10.95", "Genus", "Blast")
silva_138_nr99_naive_conf_70 <- accuracy(path = "results/RStudio/01-data_with_metadata/silva-138-nr99-naive-70-confidence-metadata.txt", "naive.70", "Genus", "Naive Bayes")
silva_138_nr99_naive_conf_80 <- accuracy(path = "results/RStudio/01-data_with_metadata/silva-138-nr99-naive-80-confidence-metadata.txt", "naive.80", "Genus", "Naive Bayes")
silva_138_nr99_naive_conf_90 <- accuracy(path = "results/RStudio/01-data_with_metadata/silva-138-nr99-naive-90-confidence-metadata.txt", "naive.90", "Genus", "Naive Bayes")


silva138_nr99_correct <- Reduce(function(x, y) merge(x, y, all=TRUE), 
                                list(silva_138_nr99_blast_1_hit_90, silva_138_nr99_blast_1_hit_95,
                                     silva_138_nr99_blast_1_hit_99, silva_138_nr99_blast_3_hit_90,
                                     silva_138_nr99_blast_10_hit_95, silva_138_nr99_naive_conf_70,
                                     silva_138_nr99_naive_conf_80, silva_138_nr99_naive_conf_90))
silva138_nr99_correct$database <- "Database 2"

silva138_nr99_taxa_correct_barplot <- barchart_taxonomy_accuracy(silva138_nr99_correct) + 
  xlab("\nSILVA NR99") +
  theme(strip.background = element_blank(), strip.text.y = element_blank())

# fixed strings 
silva_138_fixed_blast_1_hit_90 <- accuracy(path = "results/RStudio/01-data_with_metadata/silva-138-nr99-fixed-strings-blast-1-hit-90perID-metadata.txt", "blast.1.90", "Genus", "Blast")
silva_138_fixed_blast_1_hit_95 <- accuracy(path = "results/RStudio/01-data_with_metadata/silva-138-nr99-fixed-strings-blast-1-hit-95perID-metadata.txt", "blast.1.95", "Genus", "Blast")
silva_138_fixed_blast_1_hit_99 <- accuracy(path = "results/RStudio/01-data_with_metadata/silva-138-nr99-fixed-strings-blast-1-hit-99perID-metadata.txt", "blast.1.99", "Genus", "Blast")
silva_138_fixed_blast_3_hit_90 <- accuracy(path = "results/RStudio/01-data_with_metadata/silva-138-nr99-fixed-strings-blast-3-hit-90perID-metadata.txt", "blast.3.90", "Genus", "Blast")
silva_138_fixed_blast_10_hit_95 <- accuracy(path = "results/RStudio/01-data_with_metadata/silva-138-nr99-fixed-strings-blast-10-hit-95perID-metadata.txt", "blast.10.95", "Genus", "Blast")
silva_138_fixed_naive_conf_70 <- accuracy(path = "results/RStudio/01-data_with_metadata/silva-138-nr99-fixed-strings-naive-70-confidence-metadata.txt", "naive.70", "Genus", "Naive Bayes")
silva_138_fixed_naive_conf_80 <- accuracy(path = "results/RStudio/01-data_with_metadata/silva-138-nr99-fixed-strings-naive-80-confidence-metadata.txt", "naive.80", "Genus", "Naive Bayes")
silva_138_fixed_naive_conf_90 <- accuracy(path = "results/RStudio/01-data_with_metadata/silva-138-nr99-fixed-strings-naive-90-confidence-metadata.txt", "naive.90", "Genus", "Naive Bayes")

silva138_nr99_fixed_correct <- Reduce(function(x, y) merge(x, y, all=TRUE), 
                                      list(silva_138_fixed_blast_1_hit_90, silva_138_fixed_blast_1_hit_95,
                                           silva_138_fixed_blast_3_hit_90, silva_138_fixed_blast_1_hit_99,
                                           silva_138_fixed_blast_10_hit_95, silva_138_fixed_naive_conf_70,
                                           silva_138_fixed_naive_conf_80, silva_138_fixed_naive_conf_90))
silva138_nr99_fixed_correct$database <- "Database 3"

silva138_nr99_fixed_correct_barplot <- barchart_taxonomy_accuracy(silva138_nr99_fixed_correct) + 
  xlab("\nTaxa String QC") +
  theme(strip.background = element_blank(), strip.text.y = element_blank())

# fixed strings + custom seq
silva_138_fixed_custom_seq_blast_1_hit_90 <- accuracy(path = "results/RStudio/01-data_with_metadata/silva-138-nr99-fixed-strings-custom-seq-blast-1-hit-90perID-metadata.txt", "blast.1.90", "Genus", "Blast")
silva_138_fixed_custom_seq_blast_1_hit_95 <- accuracy(path = "results/RStudio/01-data_with_metadata/silva-138-nr99-fixed-strings-custom-seq-blast-1-hit-95perID-metadata.txt", "blast.1.95", "Genus", "Blast")
silva_138_fixed_custom_seq_blast_1_hit_99 <- accuracy(path = "results/RStudio/01-data_with_metadata/silva-138-nr99-fixed-strings-custom-seq-blast-1-hit-99perID-metadata.txt", "blast.1.99", "Genus", "Blast")
silva_138_fixed_custom_seq_blast_3_hit_90 <- accuracy(path = "results/RStudio/01-data_with_metadata/silva-138-nr99-fixed-strings-custom-seq-blast-3-hit-90perID-metadata.txt", "blast.3.90", "Genus", "Blast")
silva_138_fixed_custom_seq_blast_10_hit_95 <- accuracy(path = "results/RStudio/01-data_with_metadata/silva-138-nr99-fixed-strings-custom-seq-blast-10-hit-95perID-metadata.txt", "blast.10.95", "Genus", "Blast")
silva_138_fixed_custom_seq_naive_conf_70 <- accuracy(path = "results/RStudio/01-data_with_metadata/silva-138-nr99-fixed-strings-custom-seq-naive-70-confidence-metadata.txt", "naive.70", "Genus", "Naive Bayes")
silva_138_fixed_custom_seq_naive_conf_80 <- accuracy(path = "results/RStudio/01-data_with_metadata/silva-138-nr99-fixed-strings-custom-seq-naive-80-confidence-metadata.txt", "naive.80", "Genus", "Naive Bayes")
silva_138_fixed_custom_seq_naive_conf_90 <- accuracy(path = "results/RStudio/01-data_with_metadata/silva-138-nr99-fixed-strings-custom-seq-naive-90-confidence-metadata.txt", "naive.90", "Genus", "Naive Bayes")

silva138_nr99_fixed_custom_seq_correct <- Reduce(function(x, y) merge(x, y, all=TRUE), 
                                                 list(silva_138_fixed_custom_seq_blast_1_hit_90, silva_138_fixed_custom_seq_blast_1_hit_95,
                                                      silva_138_fixed_custom_seq_blast_1_hit_99, silva_138_fixed_custom_seq_blast_3_hit_90,
                                                      silva_138_fixed_custom_seq_blast_10_hit_95, silva_138_fixed_custom_seq_naive_conf_70,
                                                      silva_138_fixed_custom_seq_naive_conf_80, silva_138_fixed_custom_seq_naive_conf_90))
silva138_nr99_fixed_correct$database <- "Database 4"
silva138_nr99_fixed_custom_seq_taxa_correct_barplot <- barchart_taxonomy_accuracy(silva138_nr99_fixed_custom_seq_correct) + 
  xlab("\nAdded Ref Seqs") +
  theme(strip.background = element_blank(), strip.text.y = element_blank())

# fixed strings + custom seq + trimmed
silva_138_fixed_custom_seq_trimmed_blast_1_hit_90 <- accuracy(path = "results/RStudio/01-data_with_metadata/silva-138-nr99-fixed-strings-custom-seq-trimmed-blast-1-hit-90perID-metadata.txt", "blast.1.90", "Genus", "Blast")
silva_138_fixed_custom_seq_trimmed_blast_1_hit_95 <- accuracy(path = "results/RStudio/01-data_with_metadata/silva-138-nr99-fixed-strings-custom-seq-trimmed-blast-1-hit-95perID-metadata.txt", "blast.1.95", "Genus", "Blast")
silva_138_fixed_custom_seq_trimmed_blast_1_hit_99 <- accuracy(path = "results/RStudio/01-data_with_metadata/silva-138-nr99-fixed-strings-custom-seq-trimmed-blast-1-hit-99perID-metadata.txt", "blast.1.99", "Genus", "Blast")
silva_138_fixed_custom_seq_trimmed_blast_3_hit_90 <- accuracy(path = "results/RStudio/01-data_with_metadata/silva-138-nr99-fixed-strings-custom-seq-trimmed-blast-3-hit-90perID-metadata.txt", "blast.3.90", "Genus", "Blast")
silva_138_fixed_custom_seq_trimmed_blast_10_hit_95 <- accuracy(path = "results/RStudio/01-data_with_metadata/silva-138-nr99-fixed-strings-custom-seq-trimmed-blast-10-hit-95perID-metadata.txt", "blast.10.95", "Genus", "Blast")
silva_138_fixed_custom_seq_trimmed_naive_conf_70 <- accuracy(path = "results/RStudio/01-data_with_metadata/silva-138-nr99-fixed-strings-custom-seq-trimmed-naive-70-confidence-metadata.txt", "naive.70", "Genus", "Naive Bayes")
silva_138_fixed_custom_seq_trimmed_naive_conf_80 <- accuracy(path = "results/RStudio/01-data_with_metadata/silva-138-nr99-fixed-strings-custom-seq-trimmed-naive-80-confidence-metadata.txt", "naive.80", "Genus", "Naive Bayes")
silva_138_fixed_custom_seq_trimmed_naive_conf_90 <- accuracy(path = "results/RStudio/01-data_with_metadata/silva-138-nr99-fixed-strings-custom-seq-trimmed-naive-90-confidence-metadata.txt", "naive.90", "Genus", "Naive Bayes")

silva138_nr99_fixed_custom_seq_trimmed_correct <- Reduce(function(x, y) merge(x, y, all=TRUE), 
                                                         list(silva_138_fixed_custom_seq_trimmed_blast_1_hit_90, silva_138_fixed_custom_seq_trimmed_blast_1_hit_95,
                                                              silva_138_fixed_custom_seq_trimmed_blast_1_hit_99, silva_138_fixed_custom_seq_trimmed_blast_3_hit_90,
                                                              silva_138_fixed_custom_seq_trimmed_blast_10_hit_95, silva_138_fixed_custom_seq_trimmed_naive_conf_70,
                                                              silva_138_fixed_custom_seq_trimmed_naive_conf_80, silva_138_fixed_custom_seq_trimmed_naive_conf_90))
silva138_nr99_fixed_correct$database <- "Database 5"
silva138_nr99_fixed_custom_seq_trimmed_taxa_correct_barplot <- barchart_taxonomy_accuracy(silva138_nr99_fixed_custom_seq_trimmed_correct) +
  xlab("\nV1/V2 Trimmed") 

# make final figure XX
final_figure_xx <- ggarrange(silva138_full_taxa_correct_barplot, silva138_nr99_taxa_correct_barplot,
                             silva138_nr99_fixed_correct_barplot, silva138_nr99_fixed_custom_seq_taxa_correct_barplot, 
                             silva138_nr99_fixed_custom_seq_trimmed_taxa_correct_barplot,
                             ncol = 5, nrow = 1, common.legend = T, legend = "top")

ggsave(plot = final_figure_xx, filename = "results/RStudio/02-accuracy-barcharts/2025-01-01-visualization_taxonomy_accuracy_genus.png", width = 20, height = 8.5, dpi = 300, device = "png", units = "in", bg = "white")

# Save table and use script to calculate accuracy and precision and script 05
final_table_fn_tp <- Reduce(function(x, y) merge(x, y, all=TRUE), 
                                                         list(silva138_full_correct,
                                                              silva138_nr99_correct,
                                                              silva138_nr99_fixed_correct, 
                                                              silva138_nr99_fixed_custom_seq_correct,
                                                              silva138_nr99_fixed_custom_seq_trimmed_correct))
write_tsv(final_table_fn_tp, "results/RStudio/02-accuracy-barcharts/2025-01-01-dataframe-true-positive-false-negatives.tsv")


