barchart_taxonomy_accuracy <- function(table) {
  table_marine_labels <- table[ which(table$Environment=='Marine'), ]
  table_terrestrial_labels <- table[ which(table$Environment=='Terrestrial'), ]
  
  table$category <- factor(table$category, levels=c("Misassignment", "Correct"))
                       
  plot <- ggplot(data = table, aes(x = method, y = n, fill = category, pattern = tool)) +
    geom_col_pattern(position = "stack",
                     color = "black", 
                     pattern_fill = "black",
                     pattern_angle = 45,
                     pattern_density = 0.1,
                     pattern_spacing = 0.025,
                     pattern_key_scale_factor = 0.6) + 
    scale_pattern_manual(values = c(Blast = "none", `Naive Bayes` = "none")) +
    guides(pattern = guide_legend(override.aes = list(fill = "white")),
           fill = guide_legend(override.aes = list(pattern = "none"))) +
    facet_grid(environment ~ ., scales = "free", shrink = T) + 
    theme_taxonomy_benchmarking(axis.text.x.angle = 45, axis.title.x.vjust = 1, 
                                axis.text.x.hjust = 1, axis.text.x.vjust = 1) +
    scale_fill_manual(breaks = c("Correct", "Misassignment"), 
                      values = c("CadetBlue3", "Coral1"), 
                      labels = c("Correctly Assigned", "Misassignment")) +
    ylab("") + xlab("") 
 
  
  plot <- plot + geom_text(data = table_marine_labels, aes(label = scales::percent(n/221), y = n+15, group = category),
                           position = position_dodge(width = 0.9), vjust = 1.5, size = 2.5, fontface = "bold")
  plot <- plot + geom_text(data = table_terrestrial_labels, aes(label = scales::percent(n/117), y = n+4, group = category),
                           position = position_dodge(width = 0.9), vjust = 1.5, size = 2.5, fontface = "bold")
  plot <- plot + geom_hline(data = data.frame(yint=221, environment="Marine"), aes(yintercept=yint), linetype="dashed", color = "red") 
  plot <- plot + geom_hline(data = data.frame(yint=117, environment="Terrestrial"), aes(yintercept=yint), linetype="dashed", color = "red") 
  
  
  return(plot)
}

