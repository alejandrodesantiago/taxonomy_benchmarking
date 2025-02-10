
# cladogram of nematode at the order level, based on Holovachov 2021
order <- read.tree(text = "
                   
                   (Ctenophora, 
                   (Porifera,
                   
                   ((Cnidaria, Placozoa),
                   
                   (((Echinodermata, Hemichordata), Chordata),
                   
                   (Xenacoelomorpha, 
                   
                   (((Arthropoda, Nematoda), Priapula),
                   
                   
                   (Platyhelminthes, Orthonectida, Dicyemida,
                   (Rotifera, Acanthocephala),

                   ((Bryozoa),
                   ((Annelida),
                   ((Mollusca),
                   ((Nemertea),
                   (Brachiopoda, Phoronida))))))))))))
                   ;")

plot(order, edge.width = 5, cex = 1.5, font = 6, label.offset = 2, no.margin = T)
