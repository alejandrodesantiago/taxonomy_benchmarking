theme_taxonomy_benchmarking <- function(axis.title.face = "bold",
                  axis.title.y.angle = 90,
                  axis.title.y.vjust = 1,
                  axis.title.y.hjust = NULL,
                  axis.title.x.angle = NULL,
                  axis.title.x.vjust = 1,
                  axis.title.x.hjust = NULL,
                  axis.text.y.angle = 0,
                  axis.text.y.vjust = 0,
                  axis.text.y.hjust = 0,
                  axis.text.x.angle = 0,
                  axis.text.x.vjust = 0,
                  axis.text.x.hjust = 0,
                  legend.position = "top",
                  legend.justification = "center",
                  legend.direction = "horizontal",
                  legend.title.face = "bold",
                  grid.line.x.colour = "black",
                  grid.line.x.size = 0.1,
                  grid.line.x.type = "longdash",
                  grid.line.minor.size = 0.1,
                  grid.line.minor.colour = "grey") {
  
  theme_bw() %+replace%
    theme(axis.title   = element_text(face = axis.title.face),
          axis.title.y = element_text(angle = axis.title.y.angle, 
                                      vjust = axis.title.y.vjust, 
                                      hjust = axis.title.y.hjust,
                                      size = 22),
          axis.title.x = element_text(angle = axis.title.x.angle, 
                                      vjust = axis.title.x.vjust, 
                                      hjust = axis.title.x.hjust,
                                      size = 22),
          axis.text.x  = element_text(angle = axis.text.x.angle, 
                                      vjust = axis.text.x.vjust, 
                                      hjust = axis.text.x.hjust,
                                      size = 16),
          axis.text.y  = element_text(angle = axis.text.y.angle, 
                                      vjust = axis.text.y.vjust, 
                                      hjust = axis.text.y.hjust,
                                      size = 16),
          legend.position = legend.position, 
          legend.justification = legend.justification,
          legend.direction = legend.direction,
          legend.title = element_text(face = legend.title.face),
          legend.text = element_text(size = 22),
          panel.grid.major.x = element_line(colour = grid.line.x.colour, 
                                            size = (grid.line.x.size), 
                                            linetype = grid.line.x.type),
          panel.grid.major.y = element_blank(),
          panel.grid.minor = element_line(size = (grid.line.minor.size), 
                                          colour=grid.line.minor.colour),
          strip.text.y = element_text(size = 24, face = "bold", angle = 270),
          strip.text.x = element_text(size = 24, face = "bold"))
}
