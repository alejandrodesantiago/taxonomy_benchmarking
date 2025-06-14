####
# GET TAXONOMY BARCHARTS
####

# get metadata (mock community info)
sample_taxonomy <- count_taxonomy("data/taxonomy_benchmarking_test_dataset_metadata_final.txt", algorithm = "Mock", db = "M", mock = T, tool = "Blast", rank = "Genus")

# import taxonomy for each database
# for different taxonomy rank (i.e., Order, Family, or Genus) change the parameter

# silva full db
silva138_full_blast_90_1hit_taxonomy <- count_taxonomy("results/RStudio/01-data_with_metadata/silva-138-full-blast-1-hit-90perID-metadata.txt", algorithm = "BLAST.1.90", db = "SILVA REF", tool = "Blast", rank = "Genus")
silva138_full_blast_95_1hit_taxonomy <- count_taxonomy("results/RStudio/01-data_with_metadata/silva-138-full-blast-1-hit-95perID-metadata.txt", algorithm = "BLAST.1.95", db = "SILVA REF", tool = "Blast", rank = "Genus")
silva138_full_blast_99_1hit_taxonomy <- count_taxonomy("results/RStudio/01-data_with_metadata/silva-138-full-blast-1-hit-99perID-metadata.txt", algorithm = "BLAST.1.99", db = "SILVA REF", tool = "Blast", rank = "Genus")
silva138_full_blast_90_3hit_taxonomy <- count_taxonomy("results/RStudio/01-data_with_metadata/silva-138-full-blast-3-hit-90perID-metadata.txt", algorithm = "BLAST.3.90", db = "SILVA REF", tool = "Blast", rank = "Genus")
silva138_full_blast_95_10hit_taxonomy <- count_taxonomy("results/RStudio/01-data_with_metadata/silva-138-full-blast-10-hit-95perID-metadata.txt", algorithm = "BLAST.10.95", db = "SILVA REF", tool = "Blast", rank = "Genus")
silva138_full_naive_70_conf_taxonomy <- count_taxonomy("results/RStudio/01-data_with_metadata/silva-138-full-naive-70-confidence-metadata.txt", algorithm = "NAIVE.70", db = "SILVA REF", tool = "Naive Bayes", rank = "Genus")
silva138_full_naive_80_conf_taxonomy <- count_taxonomy("results/RStudio/01-data_with_metadata/silva-138-full-naive-80-confidence-metadata.txt", algorithm = "NAIVE.80", db = "SILVA REF", tool = "Naive Bayes", rank = "Genus")
silva138_full_naive_90_conf_taxonomy <- count_taxonomy("results/RStudio/01-data_with_metadata/silva-138-full-naive-90-confidence-metadata.txt", algorithm = "NAIVE.90", db = "SILVA REF", tool = "Naive Bayes", rank = "Genus")

# silva nr 99
silva138_nr99_blast_90_1hit_taxonomy <- count_taxonomy("results/RStudio/01-data_with_metadata/silva-138-nr99-blast-1-hit-90perID-metadata.txt", algorithm = "BLAST.1.90", db = "SILVA NR99", tool = "Blast", rank = "Genus")
silva138_nr99_blast_95_1hit_taxonomy <- count_taxonomy("results/RStudio/01-data_with_metadata/silva-138-nr99-blast-1-hit-95perID-metadata.txt", algorithm = "BLAST.1.95", db = "SILVA NR99", tool = "Blast", rank = "Genus")
silva138_nr99_blast_99_1hit_taxonomy <- count_taxonomy("results/RStudio/01-data_with_metadata/silva-138-nr99-blast-1-hit-99perID-metadata.txt", algorithm = "BLAST.1.99", db = "SILVA NR99", tool = "Blast", rank = "Genus")
silva138_nr99_blast_90_3hit_taxonomy <- count_taxonomy("results/RStudio/01-data_with_metadata/silva-138-nr99-blast-3-hit-90perID-metadata.txt", algorithm = "BLAST.3.90", db = "SILVA NR99", tool = "Blast", rank = "Genus")
silva138_nr99_blast_95_10hit_taxonomy <- count_taxonomy("results/RStudio/01-data_with_metadata/silva-138-nr99-blast-10-hit-95perID-metadata.txt", algorithm = "BLAST.10.95", db = "SILVA NR99", tool = "Blast", rank = "Genus")
silva138_nr99_naive_70_conf_taxonomy <- count_taxonomy("results/RStudio/01-data_with_metadata/silva-138-nr99-naive-70-confidence-metadata.txt", algorithm = "NAIVE.70", db = "SILVA NR99", tool = "Naive Bayes", rank = "Genus")
silva138_nr99_naive_80_conf_taxonomy <- count_taxonomy("results/RStudio/01-data_with_metadata/silva-138-nr99-naive-80-confidence-metadata.txt", algorithm = "NAIVE.80", db = "SILVA NR99", tool = "Naive Bayes", rank = "Genus")
silva138_nr99_naive_90_conf_taxonomy <- count_taxonomy("results/RStudio/01-data_with_metadata/silva-138-nr99-naive-90-confidence-metadata.txt", algorithm = "NAIVE.90", db = "SILVA NR99", tool = "Naive Bayes", rank = "Genus")

# silva nr 99 + fixed taxonomy
silva138_nr99_fixed_strings_blast_90_1hit_taxonomy <- count_taxonomy("results/RStudio/01-data_with_metadata/silva-138-nr99-fixed-strings-blast-1-hit-90perID-metadata.txt", algorithm = "BLAST.1.90", db = "Taxa String QC", tool = "Blast", rank = "Genus")
silva138_nr99_fixed_strings_blast_95_1hit_taxonomy <- count_taxonomy("results/RStudio/01-data_with_metadata/silva-138-nr99-fixed-strings-blast-1-hit-95perID-metadata.txt", algorithm = "BLAST.1.95", db = "Taxa String QC", tool = "Blast", rank = "Genus")
silva138_nr99_fixed_strings_blast_99_1hit_taxonomy <- count_taxonomy("results/RStudio/01-data_with_metadata/silva-138-nr99-fixed-strings-blast-1-hit-99perID-metadata.txt", algorithm = "BLAST.1.99", db = "Taxa String QC", tool = "Blast", rank = "Genus")
silva138_nr99_fixed_strings_blast_90_3hit_taxonomy <- count_taxonomy("results/RStudio/01-data_with_metadata/silva-138-nr99-fixed-strings-blast-3-hit-90perID-metadata.txt", algorithm = "BLAST.3.90", db = "Taxa String QC", tool = "Blast", rank = "Genus")
silva138_nr99_fixed_strings_blast_95_10hit_taxonomy <- count_taxonomy("results/RStudio/01-data_with_metadata/silva-138-nr99-fixed-strings-blast-10-hit-95perID-metadata.txt", algorithm = "BLAST.10.95", db = "Taxa String QC", tool = "Blast", rank = "Genus")
silva138_nr99_fixed_strings_naive_70_conf_taxonomy <- count_taxonomy("results/RStudio/01-data_with_metadata/silva-138-nr99-fixed-strings-naive-70-confidence-metadata.txt", algorithm = "NAIVE.70", db = "Taxa String QC", tool = "Naive Bayes", rank = "Genus")
silva138_nr99_fixed_strings_naive_80_conf_taxonomy <- count_taxonomy("results/RStudio/01-data_with_metadata/silva-138-nr99-fixed-strings-naive-80-confidence-metadata.txt", algorithm = "NAIVE.80", db = "Taxa String QC", tool = "Naive Bayes", rank = "Genus")
silva138_nr99_fixed_strings_naive_90_conf_taxonomy <- count_taxonomy("results/RStudio/01-data_with_metadata/silva-138-nr99-fixed-strings-naive-90-confidence-metadata.txt", algorithm = "NAIVE.90", db = "Taxa String QC", tool = "Naive Bayes", rank = "Genus")

# silva nr 99 + fixed taxonomy + custom seq
silva138_nr99_fixed_strings_seq_blast_90_1hit_taxonomy <- count_taxonomy("results/RStudio/01-data_with_metadata/silva-138-nr99-fixed-strings-custom-seq-blast-1-hit-90perID-metadata.txt", algorithm = "BLAST.1.90", db = "Added Ref Seq", tool = "Blast", rank = "Genus")
silva138_nr99_fixed_strings_seq_blast_95_1hit_taxonomy <- count_taxonomy("results/RStudio/01-data_with_metadata/silva-138-nr99-fixed-strings-custom-seq-blast-1-hit-95perID-metadata.txt", algorithm = "BLAST.1.95", db = "Added Ref Seq", tool = "Blast", rank = "Genus")
silva138_nr99_fixed_strings_seq_blast_99_1hit_taxonomy <- count_taxonomy("results/RStudio/01-data_with_metadata/silva-138-nr99-fixed-strings-custom-seq-blast-1-hit-99perID-metadata.txt", algorithm = "BLAST.1.99", db = "Added Ref Seq", tool = "Blast", rank = "Genus")
silva138_nr99_fixed_strings_seq_blast_90_3hit_taxonomy <- count_taxonomy("results/RStudio/01-data_with_metadata/silva-138-nr99-fixed-strings-custom-seq-blast-3-hit-90perID-metadata.txt", algorithm = "BLAST.3.90", db = "Added Ref Seq", tool = "Blast", rank = "Genus")
silva138_nr99_fixed_strings_seq_blast_95_10hit_taxonomy <- count_taxonomy("results/RStudio/01-data_with_metadata/silva-138-nr99-fixed-strings-custom-seq-blast-10-hit-95perID-metadata.txt", algorithm = "BLAST.10.95", db = "Added Ref Seq", tool = "Blast", rank = "Genus")
silva138_nr99_fixed_strings_seq_naive_70_conf_taxonomy <- count_taxonomy("results/RStudio/01-data_with_metadata/silva-138-nr99-fixed-strings-custom-seq-naive-70-confidence-metadata.txt", algorithm = "NAIVE.70", db = "Added Ref Seq", tool = "Naive Bayes", rank = "Genus")
silva138_nr99_fixed_strings_seq_naive_80_conf_taxonomy <- count_taxonomy("results/RStudio/01-data_with_metadata/silva-138-nr99-fixed-strings-custom-seq-naive-80-confidence-metadata.txt", algorithm = "NAIVE.80", db = "Added Ref Seq", tool = "Naive Bayes", rank = "Genus")
silva138_nr99_fixed_strings_seq_naive_90_conf_taxonomy <- count_taxonomy("results/RStudio/01-data_with_metadata/silva-138-nr99-fixed-strings-custom-seq-naive-90-confidence-metadata.txt", algorithm = "NAIVE.90", db = "Added Ref Seq", tool = "Naive Bayes", rank = "Genus")

# silva nr 99 + fixed taxonomy + custom seq + trimmed
silva138_nr99_fixed_strings_trimmed_seq_blast_90_1hit_taxonomy <- count_taxonomy("results/RStudio/01-data_with_metadata/silva-138-nr99-fixed-strings-custom-seq-trimmed-blast-1-hit-90perID-metadata.txt", algorithm = "BLAST.1.90", db = "V1/V2 Trimmed", tool = "Blast", rank = "Genus")
silva138_nr99_fixed_strings_trimmed_seq_blast_95_1hit_taxonomy <- count_taxonomy("results/RStudio/01-data_with_metadata/silva-138-nr99-fixed-strings-custom-seq-trimmed-blast-1-hit-95perID-metadata.txt", algorithm = "BLAST.1.95", db = "V1/V2 Trimmed", tool = "Blast", rank = "Genus")
silva138_nr99_fixed_strings_trimmed_seq_blast_99_1hit_taxonomy <- count_taxonomy("results/RStudio/01-data_with_metadata/silva-138-nr99-fixed-strings-custom-seq-trimmed-blast-1-hit-99perID-metadata.txt", algorithm = "BLAST.1.99", db = "V1/V2 Trimmed", tool = "Blast", rank = "Genus")
silva138_nr99_fixed_strings_trimmed_seq_blast_90_3hit_taxonomy <- count_taxonomy("results/RStudio/01-data_with_metadata/silva-138-nr99-fixed-strings-custom-seq-trimmed-blast-3-hit-90perID-metadata.txt", algorithm = "BLAST.3.90", db = "V1/V2 Trimmed", tool = "Blast", rank = "Genus")
silva138_nr99_fixed_strings_trimmed_seq_blast_95_10hit_taxonomy <- count_taxonomy("results/RStudio/01-data_with_metadata/silva-138-nr99-fixed-strings-custom-seq-trimmed-blast-10-hit-95perID-metadata.txt", algorithm = "BLAST.10.95", db = "V1/V2 Trimmed", tool = "Blast", rank = "Genus")
silva138_nr99_fixed_strings_trimmed_seq_naive_70_conf_taxonomy <- count_taxonomy("results/RStudio/01-data_with_metadata/silva-138-nr99-fixed-strings-custom-seq-trimmed-naive-70-confidence-metadata.txt", algorithm = "NAIVE.70", db = "V1/V2 Trimmed", tool = "Naive Bayes", rank = "Genus")
silva138_nr99_fixed_strings_trimmed_seq_naive_80_conf_taxonomy <- count_taxonomy("results/RStudio/01-data_with_metadata/silva-138-nr99-fixed-strings-custom-seq-trimmed-naive-80-confidence-metadata.txt", algorithm = "NAIVE.80", db = "V1/V2 Trimmed", tool = "Naive Bayes", rank = "Genus")
silva138_nr99_fixed_strings_trimmed_seq_naive_90_conf_taxonomy <- count_taxonomy("results/RStudio/01-data_with_metadata/silva-138-nr99-fixed-strings-custom-seq-trimmed-naive-90-confidence-metadata.txt", algorithm = "NAIVE.90", db = "V1/V2 Trimmed", tool = "Naive Bayes", rank = "Genus")

# merge all databases into one file
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

# fix these in all files (only when doing family level taxonomy)
taxonomy <- taxonomy %>% mutate(Var1 = replace(Var1, Var1 == "Cyartonematidae ", "Cyartonematidae"))
taxonomy <- taxonomy %>% mutate(Var1 = replace(Var1, Var1 == "Leptsomatidae", "Leptosomatidae"))
taxonomy <- taxonomy %>% mutate(Var1 = replace(Var1, Var1 == "CHromadoridae", "Chromadoridae"))
taxonomy <- taxonomy %>% mutate(Var1 = replace(Var1, Var1 == "Selachnematidae", "Selachinematidae"))
taxonomy <- taxonomy %>% mutate(Var1 = replace(Var1, Var1 == "Cyatholaimidae\xca", "Cyatholaimidae"))


taxonomy$method <- factor(taxonomy$method, c("SILVA REF", "SILVA NR99", "Taxa String QC", "Added Ref Seq", "V1/V2 Trimmed", "M")) # change Family of factors 
taxonomy$Var1 <- forcats::fct_relevel(taxonomy$Var1, "Unassigned", after = Inf) # Unassigned sequences should be last
taxonomy_marine <- filter(taxonomy, Freq > 0, Var2 == "Marine") # split data by habitat
taxonomy_terrestrial <- filter(taxonomy, Freq > 0, Var2 == "Terrestrial") # split data by habitat

####### 
# MARINE NEMATODE COMMUNITY ONLY
#######
### below for genus only ###
taxonomy_marine_top_7 <- taxonomy_marine %>% # only show top 7
  group_by(method, database) %>% arrange(desc(Freq), .by_group = T) %>% slice_head(n = 7)

taxonomy_marine_top_7_other <- taxonomy_marine_top_7 %>% 
  group_by(method, database, tool) %>%
  summarise(across(c(Freq), sum))

rows = function(x) lapply(seq_len(nrow(x)), function(i) lapply(x,"[",i)) # add other group to data frame
for (other in rows(taxonomy_marine_top_7_other)) {
  taxonomy_marine_top_7 <- add_row(as.data.frame(taxonomy_marine_top_7), Var1 = "Other", Var2= "Marine", Freq=221-(other$Freq), database = other$database, method = other$method, tool = other$tool)
}

taxonomy_marine_top_7$Var1 <- forcats::fct_relevel(taxonomy_marine_top_7$Var1, "Unassigned", after = Inf)
taxonomy_marine_top_7$Var1 <- forcats::fct_relevel(taxonomy_marine_top_7$Var1, "Other", after = Inf)
### above for genus only ###

# get random colors
marine_taxonomy <- ggplot(data = taxonomy_marine_top_7, aes(x = database, y = Freq, fill = Var1, pattern = tool)) +
  geom_col_pattern(position = "fill",
                   pattern_fill = "black",
                   pattern_alpha = 0.2,
                   pattern_angle = 45,
                   pattern_density = 1,
                   pattern_spacing = 0.1,
                   pattern_key_scale_factor = 0.6) + 
  scale_pattern_manual(values = c(Blast = "none", `Naive Bayes` = "stripe")) +
  guides(pattern = "none",
         fill = guide_legend(title="Genus Level Taxonomy",
                             override.aes = list(pattern = "none"))) +
  facet_grid(. ~ method, space = "free", scales = "free", shrink = T) + 
  theme_bw() + theme(axis.text.x = element_text(angle = 45, hjust = 1),
                     axis.title = element_text(face = "bold"),
                     strip.text = element_text(face = "bold"),
                     legend.title = element_text(hjust = 0.5, face = "bold"),
                     legend.text=element_text(size=12)) +
  labs(y = "Abundance", x="\nMethods", title = "") +
  scale_y_continuous(labels = scales::percent_format()) +
  genus_marine # color saved (use either: genus_marine, family_marine, or order_marine)
ggsave(plot = marine_taxonomy, "results/RStudio/03-taxonomy-barcharts/2025-01-01-visualizing_taxonomy_barcharts_marine_genus.png", height = 6, width = 13, units = "in", device = "png", dpi = 300)

####### 
# SOIL NEMATODE COMMUNITY ONLY
#######
### below for genus only ###
taxonomy_terrestrial_top_7 <- taxonomy_terrestrial %>% 
  group_by(method, database) %>% arrange(desc(Freq), .by_group = T) %>% slice_head(n = 7)

taxonomy_terrestrial_top_7_other <- taxonomy_terrestrial_top_7 %>% 
  group_by(method, database, tool) %>%
  summarise(across(c(Freq), sum))

rows = function(x) lapply(seq_len(nrow(x)), function(i) lapply(x,"[",i))
for (other in rows(taxonomy_terrestrial_top_7_other)) {
  taxonomy_terrestrial_top_7 <- add_row(as.data.frame(taxonomy_terrestrial_top_7), Var1 = "Other", Var2= "terrestrial", Freq=117-(other$Freq), database = other$database, method = other$method, tool = other$tool)
}

taxonomy_terrestrial_top_7$Var1 <- forcats::fct_relevel(taxonomy_terrestrial_top_7$Var1, "Unassigned", after = Inf)
taxonomy_terrestrial_top_7$Var1 <- forcats::fct_relevel(taxonomy_terrestrial_top_7$Var1, "Other", after = Inf)
#### above for genus only ####


p <- ggplot(data = taxonomy_terrestrial_top_7, aes(x = database, y = Freq, fill = Var1, pattern = tool)) +
  geom_col_pattern(position = "fill",
                   pattern_fill = "black",
                   pattern_alpha = 0.2,
                   pattern_angle = 45,
                   pattern_density = 1,
                   pattern_spacing = 0.1,
                   pattern_key_scale_factor = 0.6) +  
  scale_pattern_manual(values = c(Blast = "none", `Naive Bayes` = "stripe")) +
  guides(pattern = "none",
         fill = guide_legend(title="Genus Level Taxonomy",
                             override.aes = list(pattern = "none"))) +
  facet_grid(. ~ method, space = "free", scales = "free", shrink = T) + 
  theme_bw() + theme(axis.text.x = element_text(angle = 45, hjust = 1),
                     axis.title = element_text(face = "bold"),
                     strip.text = element_text(face = "bold"),
                     legend.title = element_text(hjust = 0.5, face = "bold"),
                     legend.text=element_text(size=12)) +
  labs(y = "Abundance", x="\nMethods", title = "") +
  scale_y_continuous(labels = scales::percent_format()) +
  genus_soil
ggsave(plot = p, "results/RStudio/03-taxonomy-barcharts/2025-01-01-visualizing_taxonomy_barcharts_terrestrial_genus.png", height = 6, width = 13, units = "in", device = "png", dpi = 300)

