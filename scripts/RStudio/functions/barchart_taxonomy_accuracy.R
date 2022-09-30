barchart_taxonomy_accuracy <- function(table) {
  table_marine_labels <- table[ which(table$Environment=='Marine'), ]
  table_terrestrial_labels <- table[ which(table$Environment=='Terrestrial'), ]
  
  plot <- ggplot(table, aes(fill=category, y=n, x=method)) + 
    geom_bar(position="dodge2", stat="identity") +
    facet_grid(Environment ~ ., scales = "free", shrink = T) + 
    theme_taxonomy_benchmarking(axis.text.x.angle = 45, axis.title.x.vjust = 1, axis.text.x.hjust = 1, axis.text.x.vjust = 1) +
    scale_fill_manual(labels = c("Assigned", "Correctly Assigned"), values = c("Coral1", "CadetBlue3")) +
    ylab("Number of Sequences\n") + xlab("\nTaxonomy Assignment Method")
  
  plot <- plot + geom_text(data = table_marine_labels, aes(label = scales::percent(n/221), y = n+15, group = category),
                           position = position_dodge(width = 0.9), vjust = 1.5, size = 2.5, fontface = "bold")
  plot <- plot + geom_text(data = table_terrestrial_labels, aes(label = scales::percent(n/117), y = n+4, group = category),
                           position = position_dodge(width = 0.9), vjust = 1.5, size = 2.5, fontface = "bold")
  plot <- plot + geom_hline(data = data.frame(yint=221, Environment="Marine"), aes(yintercept=yint), linetype="dashed", color = "red") 
  plot <- plot + geom_hline(data = data.frame(yint=117, Environment="Terrestrial"), aes(yintercept=yint), linetype="dashed", color = "red") 
  
  return(plot)
  
}

