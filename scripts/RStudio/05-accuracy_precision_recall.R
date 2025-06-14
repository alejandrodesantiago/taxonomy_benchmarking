library(RColorBrewer)
library(tidyverse)
library(ggpubr)

df <- read.table("results/RStudio/02-accuracy-barcharts/accuracy_precision_r_ready.txt", header = T, sep = "\t", fill = T, allowEscapes = F)
df$taxonomy_level <- fct_rev(factor(df$taxonomy_level, c("genus", "family", "order")))
colors <- brewer.pal(n = 8, name = "Dark2")

database.labs <- c("SILVA REF", "SILVA NR99", "Taxa String QC", "Add More Seqs", "V1/V2 Trimmed")
names(database.labs) <- c("Database 1", "Database 2", "Database 3", "Database 4", "Database 5")

precision <- ggplot(df, aes(x=taxonomy_level, y=precision, color = parameter, group=parameter)) +
  geom_line() +
  geom_point() +
  geom_hline(yintercept=70, linetype='dotted', col = 'red')+
  scale_color_manual(values = colors) +
  facet_grid(database ~ habitat, labeller = labeller(database = database.labs)) + 
  theme_bw() +
  theme(axis.title = element_text(size = 18), 
        axis.text = element_text(size = 16), 
        legend.text = element_text(size=16),
        legend.title = element_text(size=18, hjust = 0.5), 
        axis.text.x = element_text(angle = 45, vjust = 0.75),
        strip.text.x = element_text(size = 12, face = "bold"),
        strip.text.y = element_text(size = 12, face = "bold")) +
  scale_y_continuous(limits = c(0, 100)) +
  ylab("Precision \n") + xlab("\n Taxonomic Level")

accuracy <- ggplot(df, aes(x=taxonomy_level, y=accuracy, color = parameter, group=parameter)) +
  geom_line() +
  geom_point() +
  geom_hline(yintercept=70, linetype='dotted', col = 'red') +
  scale_color_manual(values = colors) +
  facet_grid(database ~ habitat, labeller = labeller(database = database.labs)) + 
  theme_bw() +
  theme(axis.title = element_text(size = 18), 
        axis.text = element_text(size = 16), 
        legend.text = element_text(size=16),
        legend.title = element_text(size=18, hjust = 0.5), 
        legend.key.size = unit(1, 'cm'),
        axis.text.x = element_text(angle = 45, vjust = 0.75),
        strip.text.x = element_text(size = 12, face = "bold"),
        strip.text.y = element_text(size = 12, face = "bold")) +
  scale_y_continuous(limits = c(0, 100)) +
  ylab("Accuracy \n") + xlab("\n Taxonomic Level")

final_figure_xx <- ggarrange(accuracy, precision, labels = c("A", "B"), 
                             ncol = 2, nrow = 1, common.legend = T, legend = "top")
ggsave(plot = final_figure_xx, filename = "results/RStudio/05-accuracy-precision-recall/2025-01-01-accuracy_precision.png", height = 12, width = 11, bg = "white", dpi = 300, device = "png", units = "in")


