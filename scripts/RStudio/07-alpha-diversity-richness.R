library(RColorBrewer)

my_comparisons <- list( c("SILVA REF", "Mock"), 
                        c("SILVA NR99", "Mock"), 
                        c("Taxa String QC", "Mock"), c("Added Ref Seq", "Mock"),
                        c("V1/V2 Trimmed", "Mock"))

my_comparisons <- list( c("SILVA REF", "Taxa String QC"), c("SILVA NR99", "Added Ref Seq"))
colors <- brewer.pal(n = 8, name = "Dark2")


# use taxonomy file merged in step 02-taxonomy_barcharts
taxonomy_marine <- filter(taxonomy, Freq > 0, Var2 == "Marine")
taxonomy_marine_alpha <- taxonomy_marine %>% 
  group_by(method, database, tool) %>%
  summarize(count_distinct = n_distinct(Var1))
taxonomy_marine_alpha = taxonomy_marine_alpha[!taxonomy_marine_alpha$method == "M",]
richness_marine <- ggplot(taxonomy_marine_alpha, aes(x=method, y=count_distinct)) + 
  geom_boxplot() +
  geom_point(aes(color = database)) +
  scale_color_manual(values = colors) +
  theme_bw() +
  ylab("Richness") + xlab("Reference Database") + labs(color="Method") +
#  stat_compare_means(label.y = 40) +
  geom_hline(data = data.frame(yint=48, environment="Marine"), aes(yintercept=yint), linetype="dashed", color = "red") 

taxonomy_terrestrial <- filter(taxonomy, Freq > 0, Var2 == "Terrestrial")
taxonomy_terrestrial_alpha <- taxonomy_terrestrial %>% 
  group_by(method, database, tool) %>%
  summarize(count_distinct = n_distinct(Var1))
taxonomy_terrestrial_alpha = taxonomy_terrestrial_alpha[!taxonomy_terrestrial_alpha$method == "M",]
richness_terrestrial <- ggplot(taxonomy_terrestrial_alpha, aes(x=method, y=count_distinct)) + 
  geom_boxplot() +
  geom_point(aes(color = database)) +
  scale_color_manual(values = colors) +
  theme_bw() +
  ylab("Richness") + xlab("Reference Database") + labs(color="Method") +
#  stat_compare_means(label.y = 35) +
  geom_hline(data = data.frame(yint=30, environment="terrestrial"), aes(yintercept=yint), linetype="dashed", color = "red") 

richness_ggplot <- ggarrange(richness_marine, richness_terrestrial, ncol = 1, nrow = 2, common.legend = T)
ggsave(plot = richness_ggplot, filename = "results/RStudio/figure_zz_visualization_richness_FINAL.png", width = 8.5, height = 11, bg = "white", dpi = 300, device = "png", units = "in")


df_taxonomy_marine_alpha <- as.data.frame(taxonomy_marine_alpha)
taxonomy_marine_alpha_kw <- as.data.frame(sapply(4, function(x) kruskal.test(df_taxonomy_marine_alpha[,x],
                                                                             df_taxonomy_marine_alpha[,2])))

silva_ref <- filter(as.data.frame(taxonomy_marine_alpha), method == "SILVA REF")
silva_nr99 <- filter(as.data.frame(taxonomy_marine_alpha), method == "SILVA NR99")
silva_taxa_qc <- filter(as.data.frame(taxonomy_marine_alpha), method == "Taxa String QC")
silva_added_ref <- filter(as.data.frame(taxonomy_marine_alpha), method == "Added Ref Seq")
silva_trimmed <- filter(as.data.frame(taxonomy_marine_alpha), method == "V1/V2 Trimmed")

wilcox.test(silva_ref$count_distinct, mu = 48, exact = F)
wilcox.test(silva_nr99$count_distinct, mu = 48, exact = F)
wilcox.test(silva_taxa_qc$count_distinct, mu = 48, exact = F)
wilcox.test(silva_added_ref$count_distinct, mu = 48, exact = F)
wilcox.test(silva_trimmed$count_distinct, mu = 48, exact = F)


silva_ref <- filter(taxonomy_terrestrial_alpha, method == "SILVA REF")
silva_nr99 <- filter(taxonomy_terrestrial_alpha, method == "SILVA NR99")
silva_taxa_qc <- filter(taxonomy_terrestrial_alpha, method == "Taxa String QC")
silva_added_ref <- filter(taxonomy_terrestrial_alpha, method == "Added Ref Seq")
silva_trimmed <- filter(taxonomy_terrestrial_alpha, method == "V1/V2 Trimmed")

wilcox.test(silva_ref$count_distinct, mu = 30, exact = F)
wilcox.test(silva_nr99$count_distinct, mu = 30, exact = F)
wilcox.test(silva_taxa_qc$count_distinct, mu = 30, exact = F)
wilcox.test(silva_added_ref$count_distinct, mu = 30, exact = F)
wilcox.test(silva_trimmed$count_distinct, mu = 30, exact = F)

