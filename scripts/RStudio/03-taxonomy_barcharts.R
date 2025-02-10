# get metadata (mock community info)
sample_taxonomy <- count_taxonomy_table("data/taxonomy_benchmarking_test_dataset_metadata_final.txt", algorithm = "Mock", db = "Mock", mock = T, tool = "Blast")

# silva full db
silva138_full_blast_90_1hit_taxonomy <- count_taxonomy_table("results/RStudio/01-data_with_metadata/silva-138-full-blast-1-hit-90perID-metadata.txt", algorithm = "BLAST.1.90", db = "Database 1")
silva138_full_blast_95_1hit_taxonomy <- count_taxonomy_table("results/RStudio/01-data_with_metadata/silva-138-full-blast-1-hit-95perID-metadata.txt", algorithm = "BLAST.1.95", db = "Database 1")
silva138_full_blast_99_1hit_taxonomy <- count_taxonomy_table("results/RStudio/01-data_with_metadata/silva-138-full-blast-1-hit-99perID-metadata.txt", algorithm = "BLAST.1.99", db = "Database 1")
silva138_full_blast_90_3hit_taxonomy <- count_taxonomy_table("results/RStudio/01-data_with_metadata/silva-138-full-blast-3-hit-90perID-metadata.txt", algorithm = "BLAST.3.90", db = "Database 1")
silva138_full_blast_95_10hit_taxonomy <- count_taxonomy_table("results/RStudio/01-data_with_metadata/silva-138-full-blast-10-hit-95perID-metadata.txt", algorithm = "BLAST.10.95", db = "Database 1")
silva138_full_naive_70_conf_taxonomy <- count_taxonomy_table("results/RStudio/01-data_with_metadata/silva-138-full-naive-70-confidence-metadata.txt", algorithm = "NIAVE.70", db = "Database 1")
silva138_full_naive_80_conf_taxonomy <- count_taxonomy_table("results/RStudio/01-data_with_metadata/silva-138-full-naive-80-confidence-metadata.txt", algorithm = "NIAVE.80", db = "Database 1")
silva138_full_naive_90_conf_taxonomy <- count_taxonomy_table("results/RStudio/01-data_with_metadata/silva-138-full-naive-90-confidence-metadata.txt", algorithm = "NIAVE.90", db = "Database 1")

# silva nr 99
silva138_nr99_blast_90_1hit_taxonomy <- count_taxonomy_table("results/RStudio/01-data_with_metadata/silva-138-nr99-blast-1-hit-90perID-metadata.txt", algorithm = "BLAST.1.90", db = "Database 2")
silva138_nr99_blast_95_1hit_taxonomy <- count_taxonomy_table("results/RStudio/01-data_with_metadata/silva-138-nr99-blast-1-hit-95perID-metadata.txt", algorithm = "BLAST.1.95", db = "Database 2")
silva138_nr99_blast_99_1hit_taxonomy <- count_taxonomy_table("results/RStudio/01-data_with_metadata/silva-138-nr99-blast-1-hit-99perID-metadata.txt", algorithm = "BLAST.1.99", db = "Database 2")
silva138_nr99_blast_90_3hit_taxonomy <- count_taxonomy_table("results/RStudio/01-data_with_metadata/silva-138-nr99-blast-3-hit-90perID-metadata.txt", algorithm = "BLAST.3.90", db = "Database 2")
silva138_nr99_blast_95_10hit_taxonomy <- count_taxonomy_table("results/RStudio/01-data_with_metadata/silva-138-nr99-blast-10-hit-95perID-metadata.txt", algorithm = "BLAST.10.95", db = "Database 2")
silva138_nr99_naive_70_conf_taxonomy <- count_taxonomy_table("results/RStudio/01-data_with_metadata/silva-138-nr99-naive-70-confidence-metadata.txt", algorithm = "NIAVE.70", db = "Database 2")
silva138_nr99_naive_80_conf_taxonomy <- count_taxonomy_table("results/RStudio/01-data_with_metadata/silva-138-nr99-naive-80-confidence-metadata.txt", algorithm = "NIAVE.80", db = "Database 2")
silva138_nr99_naive_90_conf_taxonomy <- count_taxonomy_table("results/RStudio/01-data_with_metadata/silva-138-nr99-naive-90-confidence-metadata.txt", algorithm = "NIAVE.90", db = "Database 2")

# silva nr 99 + fixed taxonomy
silva138_nr99_fixed_strings_blast_90_1hit_taxonomy <- count_taxonomy_table("results/RStudio/01-data_with_metadata/silva-138-nr99-fixed-strings-blast-1-hit-90perID-metadata.txt", algorithm = "BLAST.1.90", db = "Database 3")
silva138_nr99_fixed_strings_blast_95_1hit_taxonomy <- count_taxonomy_table("results/RStudio/01-data_with_metadata/silva-138-nr99-fixed-strings-blast-1-hit-95perID-metadata.txt", algorithm = "BLAST.1.95", db = "Database 3")
silva138_nr99_fixed_strings_blast_99_1hit_taxonomy <- count_taxonomy_table("results/RStudio/01-data_with_metadata/silva-138-nr99-fixed-strings-blast-1-hit-99perID-metadata.txt", algorithm = "BLAST.1.99", db = "Database 3")
silva138_nr99_fixed_strings_blast_90_3hit_taxonomy <- count_taxonomy_table("results/RStudio/01-data_with_metadata/silva-138-nr99-fixed-strings-blast-3-hit-90perID-metadata.txt", algorithm = "BLAST.3.90", db = "Database 3")
silva138_nr99_fixed_strings_blast_95_10hit_taxonomy <- count_taxonomy_table("results/RStudio/01-data_with_metadata/silva-138-nr99-fixed-strings-blast-10-hit-95perID-metadata.txt", algorithm = "BLAST.10.95", db = "Database 3")
silva138_nr99_fixed_strings_naive_70_conf_taxonomy <- count_taxonomy_table("results/RStudio/01-data_with_metadata/silva-138-nr99-fixed-strings-naive-70-confidence-metadata.txt", algorithm = "NIAVE.70", db = "Database 3")
silva138_nr99_fixed_strings_naive_80_conf_taxonomy <- count_taxonomy_table("results/RStudio/01-data_with_metadata/silva-138-nr99-fixed-strings-naive-80-confidence-metadata.txt", algorithm = "NIAVE.80", db = "Database 3")
silva138_nr99_fixed_strings_naive_90_conf_taxonomy <- count_taxonomy_table("results/RStudio/01-data_with_metadata/silva-138-nr99-fixed-strings-naive-90-confidence-metadata.txt", algorithm = "NIAVE.90", db = "Database 3")

# silva nr 99 + fixed taxonomy + custom seq
silva138_nr99_fixed_strings_seq_blast_90_1hit_taxonomy <- count_taxonomy_table("results/RStudio/01-data_with_metadata/silva-138-nr99-fixed-strings-custom-seq-blast-1-hit-90perID-metadata.txt", algorithm = "BLAST.1.90", db = "Database 4")
silva138_nr99_fixed_strings_seq_blast_95_1hit_taxonomy <- count_taxonomy_table("results/RStudio/01-data_with_metadata/silva-138-nr99-fixed-strings-custom-seq-blast-1-hit-95perID-metadata.txt", algorithm = "BLAST.1.95", db = "Database 4")
silva138_nr99_fixed_strings_seq_blast_99_1hit_taxonomy <- count_taxonomy_table("results/RStudio/01-data_with_metadata/silva-138-nr99-fixed-strings-custom-seq-blast-1-hit-99perID-metadata.txt", algorithm = "BLAST.1.99", db = "Database 4")
silva138_nr99_fixed_strings_seq_blast_90_3hit_taxonomy <- count_taxonomy_table("results/RStudio/01-data_with_metadata/silva-138-nr99-fixed-strings-custom-seq-blast-3-hit-90perID-metadata.txt", algorithm = "BLAST.3.90", db = "Database 4")
silva138_nr99_fixed_strings_seq_blast_95_10hit_taxonomy <- count_taxonomy_table("results/RStudio/01-data_with_metadata/silva-138-nr99-fixed-strings-custom-seq-blast-10-hit-95perID-metadata.txt", algorithm = "BLAST.10.95", db = "Database 4")
silva138_nr99_fixed_strings_seq_naive_70_conf_taxonomy <- count_taxonomy_table("results/RStudio/01-data_with_metadata/silva-138-nr99-fixed-strings-custom-seq-naive-70-confidence-metadata.txt", algorithm = "NIAVE.70", db = "Database 4")
silva138_nr99_fixed_strings_seq_naive_80_conf_taxonomy <- count_taxonomy_table("results/RStudio/01-data_with_metadata/silva-138-nr99-fixed-strings-custom-seq-naive-80-confidence-metadata.txt", algorithm = "NIAVE.80", db = "Database 4")
silva138_nr99_fixed_strings_seq_naive_90_conf_taxonomy <- count_taxonomy_table("results/RStudio/01-data_with_metadata/silva-138-nr99-fixed-strings-custom-seq-naive-90-confidence-metadata.txt", algorithm = "NIAVE.90", db = "Database 4")

# silva nr 99 + fixed taxonomy + custom seq + trimmed
silva138_nr99_fixed_strings_trimmed_seq_blast_90_1hit_taxonomy <- count_taxonomy_table("results/RStudio/01-data_with_metadata/silva-138-nr99-fixed-strings-custom-seq-trimmed-blast-1-hit-90perID-metadata.txt", algorithm = "BLAST.1.90", db = "Database 5")
silva138_nr99_fixed_strings_trimmed_seq_blast_95_1hit_taxonomy <- count_taxonomy_table("results/RStudio/01-data_with_metadata/silva-138-nr99-fixed-strings-custom-seq-trimmed-blast-1-hit-95perID-metadata.txt", algorithm = "BLAST.1.95", db = "Database 5")
silva138_nr99_fixed_strings_trimmed_seq_blast_99_1hit_taxonomy <- count_taxonomy_table("results/RStudio/01-data_with_metadata/silva-138-nr99-fixed-strings-custom-seq-trimmed-blast-1-hit-99perID-metadata.txt", algorithm = "BLAST.1.99", db = "Database 5")
silva138_nr99_fixed_strings_trimmed_seq_blast_90_3hit_taxonomy <- count_taxonomy_table("results/RStudio/01-data_with_metadata/silva-138-nr99-fixed-strings-custom-seq-trimmed-blast-3-hit-90perID-metadata.txt", algorithm = "BLAST.3.90", db = "Database 5")
silva138_nr99_fixed_strings_trimmed_seq_blast_95_10hit_taxonomy <- count_taxonomy_table("results/RStudio/01-data_with_metadata/silva-138-nr99-fixed-strings-custom-seq-trimmed-blast-10-hit-95perID-metadata.txt", algorithm = "BLAST.10.95", db = "Database 5")
silva138_nr99_fixed_strings_trimmed_seq_naive_70_conf_taxonomy <- count_taxonomy_table("results/RStudio/01-data_with_metadata/silva-138-nr99-fixed-strings-custom-seq-trimmed-naive-70-confidence-metadata.txt", algorithm = "NIAVE.70", db = "Database 5")
silva138_nr99_fixed_strings_trimmed_seq_naive_80_conf_taxonomy <- count_taxonomy_table("results/RStudio/01-data_with_metadata/silva-138-nr99-fixed-strings-custom-seq-trimmed-naive-80-confidence-metadata.txt", algorithm = "NIAVE.80", db = "Database 5")
silva138_nr99_fixed_strings_trimmed_seq_naive_90_conf_taxonomy <- count_taxonomy_table("results/RStudio/01-data_with_metadata/silva-138-nr99-fixed-strings-custom-seq-trimmed-naive-90-confidence-metadata.txt", algorithm = "NIAVE.90", db = "Database 5")

taxonomy <- Reduce(function(x, y) merge(x, y, all=TRUE), 
                                 list(sample_taxonomy, 
                                      silva138_full_blast_90_1hit_taxonomy,
                                      silva138_full_blast_95_1hit_taxonomy, 
                                      silva138_full_blast_99_1hit_taxonomy, 
                                      silva138_full_blast_90_3hit_taxonomy, 
                                      silva138_full_blast_95_10hit_taxonomy,
                                      silva138_full_naive_70_conf_taxonomy, 
                                      silva138_full_naive_80_conf_taxonomy, 
                                      silva138_full_naive_90_conf_taxonomy,
                                      silva138_nr99_blast_90_1hit_taxonomy,
                                      silva138_nr99_blast_95_1hit_taxonomy,
                                      silva138_nr99_blast_99_1hit_taxonomy,
                                      silva138_nr99_blast_90_3hit_taxonomy,
                                      silva138_nr99_blast_95_10hit_taxonomy,
                                      silva138_nr99_naive_70_conf_taxonomy,
                                      silva138_nr99_naive_80_conf_taxonomy,
                                      silva138_nr99_naive_90_conf_taxonomy,
                                      silva138_nr99_fixed_strings_blast_90_1hit_taxonomy,
                                      silva138_nr99_fixed_strings_blast_95_1hit_taxonomy,
                                      silva138_nr99_fixed_strings_blast_99_1hit_taxonomy,
                                      silva138_nr99_fixed_strings_blast_90_3hit_taxonomy,
                                      silva138_nr99_fixed_strings_blast_95_10hit_taxonomy,
                                      silva138_nr99_fixed_strings_naive_70_conf_taxonomy,
                                      silva138_nr99_fixed_strings_naive_80_conf_taxonomy,
                                      silva138_nr99_fixed_strings_naive_90_conf_taxonomy,
                                      silva138_nr99_fixed_strings_seq_blast_90_1hit_taxonomy,
                                      silva138_nr99_fixed_strings_seq_blast_95_1hit_taxonomy,
                                      silva138_nr99_fixed_strings_seq_blast_99_1hit_taxonomy,
                                      silva138_nr99_fixed_strings_seq_blast_90_3hit_taxonomy,
                                      silva138_nr99_fixed_strings_seq_blast_95_10hit_taxonomy,
                                      silva138_nr99_fixed_strings_seq_naive_70_conf_taxonomy,
                                      silva138_nr99_fixed_strings_seq_naive_80_conf_taxonomy, 
                                      silva138_nr99_fixed_strings_seq_naive_90_conf_taxonomy,
                                      silva138_nr99_fixed_strings_trimmed_seq_blast_90_1hit_taxonomy, 
                                      silva138_nr99_fixed_strings_trimmed_seq_blast_95_1hit_taxonomy,
                                      silva138_nr99_fixed_strings_trimmed_seq_blast_99_1hit_taxonomy, 
                                      silva138_nr99_fixed_strings_trimmed_seq_blast_90_3hit_taxonomy,
                                      silva138_nr99_fixed_strings_trimmed_seq_blast_95_10hit_taxonomy,
                                      silva138_nr99_fixed_strings_trimmed_seq_naive_70_conf_taxonomy,
                                      silva138_nr99_fixed_strings_trimmed_seq_naive_80_conf_taxonomy,
                                      silva138_nr99_fixed_strings_trimmed_seq_naive_90_conf_taxonomy
                                 ))

# fix these in all files
taxonomy <- taxonomy %>% mutate(Var1 = replace(Var1, Var1 == "Cyartonematidae ", "Cyartonematidae"))
taxonomy <- taxonomy %>% mutate(Var1 = replace(Var1, Var1 == "CHromadoridae", "Chromadoridae"))
taxonomy <- taxonomy %>% mutate(Var1 = replace(Var1, Var1 == "Selachnematidae", "Selachinematidae"))
taxonomy <- taxonomy %>% mutate(Var1 = replace(Var1, Var1 == "Cyatholaimidae\xca", "Cyatholaimidae"))

color = grDevices::colors()[grep('gr(a|e)y', grDevices::colors(), invert = T)]
color = sample(color, 36)

supp.labs <- c("Mock", "Database 1", "Database 2", "Database 3", "Database 4", "Database 5")
names(supp.labs) <- c("Mock", "Database 1", "Database 2", "Database 3", "Database 4", "Database 5")

taxonomy_marine <- filter(taxonomy, Freq > 0, Var2 == "Marine")
taxonomy_terrestrial <- filter(taxonomy, Freq > 0, Var2 == "Terrestrial")

taxonomy_marine$Var1 <- factor(taxonomy_marine$Var1, exclude = "Unassigned") # does exclude

taxonomy_terrestrial$Var1 <- factor(taxonomy_terrestrial$Var1, exclude = "Unassigned") # does exclude

color = grDevices::colors()[grep('gr(a|e)y', grDevices::colors(), invert = T)]
color = sample(color, 34)

g <- ggplot(taxonomy_marine, aes(x = database, y = (Freq/221)*100, fill = Var1)) +
  theme_taxonomy_benchmarking(axis.text.x.angle = 45, axis.title.x.vjust = 1, 
                              axis.text.x.hjust = 1, axis.text.x.vjust = 1,
                              legend.position = "right", legend.direction = "vertical") +
  facet_grid(. ~ method, space = "free", scales = "free", shrink = T, labeller = labeller(method = supp.labs)) + 
  scale_fill_manual(values=color) + geom_bar(stat = "identity") +
  labs(y = "Abundance")
ggsave(plot = g, "results/RStudio/03-taxonomy-barcharts/2022-04-15-visualizing_taxonomy_barcharts_marine_family.png", height = 8.5, width = 20, units = "in", device = "png", dpi = 300)

color = grDevices::colors()[grep('gr(a|e)y', grDevices::colors(), invert = T)]
color = sample(color, 27)

p <- ggplot(taxonomy_terrestrial, aes(x = database, y = (Freq/117)*100, fill = Var1)) +
  theme_taxonomy_benchmarking(axis.text.x.angle = 45, axis.title.x.vjust = 1, 
                              axis.text.x.hjust = 1, axis.text.x.vjust = 1,
                              legend.position = "right", legend.direction = "vertical") +
  facet_grid(. ~ method, space = "free", scales = "free", shrink = F, labeller = labeller(method = supp.labs)) + 
  scale_fill_manual(values=color) + geom_bar(stat = "identity") +
  labs(y = "Abundance")
ggsave(plot = p, "results/RStudio/03-taxonomy-barcharts/2022-04-15-visualizing_taxonomy_barcharts_marine_terrestrial.png", height = 8.5, width = 20, units = "in", device = "png", dpi = 300)

#p <- ggplot(data = taxonomy_terrestrial, aes(database, Var1, fill= Freq)) +
###  facet_grid(. ~ method, space = "free", scales = "free", shrink = T, labeller = labeller(method = supp.labs)) + 
#  geom_tile() +
  #  theme_bw() +
#  theme(panel.background=element_rect(fill="white", colour="white"),
#        axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1, face = "bold"),
 #       strip.background = element_blank(),
  #      strip.text.x = element_blank()) +
#  geom_text(aes(label = Freq), color = "black", size = 2) +
 # scale_fill_distiller(palette = "Blues", direction=2, values = c(0, 0.01, seq(0.05, 1, 0.05))) +
  #labs(y = "Taxonomy", x = "\nDatabase") 

