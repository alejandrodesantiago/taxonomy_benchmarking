library(ape)
library(forcats)
library(rstudioapi)

# cladogram of nematode at the order level, based on Holovachov 2021
order <- read.tree(text = "
                   (((Enoplida),
                   (Triplonchida)),
                   
                   ((((Dioctophymatida),
                   (Trichinellida)),
                   (((Mononchida),
                   (Mermithida)),
                   (Dorylaimida))),
                   
                   (((Chromadorida),
                   (Desmodorida)),
                   
                   ((Desmoscolecida),
                   ((Isolaimida),
                   (Monhysterida),
                   ((Araeolaimida),
                   ((Plectida),
                   (Rhabditida, Muspiceida))))))))
                   ;")


plot(order, edge.width = 10, cex = 2, font = 6, label.offset = 1, no.margin = T)
savePlotAsImage("results/RStudio/2022-04-23-silva_summary_order_treew.png", format = "png", width = 1500, height = 1500)

# import silva with fixed strings
silva <- read.table("databases/nematoda_taxonomy_fixed.txt", header = F, sep = "\t", fill = T, allowEscapes = F)

silva <- silva %>%
  group_by(V2, V3, V4) %>%
  summarise(n_unique = n_distinct(V1)) %>%
  ungroup()

silva <- silva %>% 
  mutate(x_label = factor(str_replace(interaction(V2, V4), '\\.', ' / '),
                          ordered=TRUE))

silva$V3 <- factor(silva$V3, levels = c('Additional', 'SILVA NR99', 'SILVA 138'))

silva$x_label <- fct_rev(factor(silva$x_label, c("Muspiceida / OriginalDB", "Muspiceida / CustomDB",
                                       "Rhabditida / OriginalDB", "Rhabditida / CustomDB",
                                       "Plectida / OriginalDB", "Plectida / CustomDB",
                                       "Araeolaimida / OriginalDB", "Araeolaimida / CustomDB",
                                       "Monhysterida / OriginalDB", "Monhysterida / CustomDB",
                                       "Isolaimida / OriginalDB", "Isolaimida / CustomDB",
                                       "Desmoscolecida / OriginalDB", "Desmoscolecida / CustomDB", 
                                       "Desmodorida / OriginalDB", "Desmodorida / CustomDB", 
                                       "Chromadorida / OriginalDB", "Chromadorida / CustomDB",
                                       "Dorylaimida / OriginalDB", "Dorylaimida / CustomDB",
                                       "Mermithida / OriginalDB", "Mermithida / CustomDB",
                                       "Mononchida / OriginalDB", "Mononchida / CustomDB",
                                       "Trichinellida / OriginalDB", "Trichinellida / CustomDB", 
                                       "Dioctophymatida / OriginalDB", "Dioctophymatida / CustomDB", 
                                       "Triplonchida / OriginalDB", "Triplonchida / CustomDB",
                                       "Enoplida / OriginalDB", "Enoplida / CustomDB")))

silva_summary_barchart <- ggplot(silva, aes(x=n_unique, y=x_label, fill = V3)) + 
  geom_bar(stat = "identity") +
  scale_fill_manual(values=c("tan3", "grey70", "black")) + 
  scale_y_discrete(drop = F) + 
  scale_x_continuous(limits=c(0, 3500), breaks=seq(0,3500, by = 250)) +
  theme_bw() +
  theme(axis.text.y = element_blank(), axis.ticks.y = element_blank(), axis.title.y = element_blank(),
        axis.text.x = element_text(size = 28, angle = 90))
silva_summary_barchart
savePlotAsImage("results/RStudio/2022-04-23-silva_summary_order_seq_count.png", format = "png", width = 1500, height = 1600)




