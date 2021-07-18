p<- ggplot(dat2) +

  geom_density( aes(x = FN_2019, y = ..density..),fill="#69b3a2",alpha=.5) + scale_color_npg()+
  geom_density( aes(x = FN_2020, y = ..density..),fill="#404080",alpha=.5)+ scale_color_npg()+
  xlab("Fruit Number") +
  
  theme(axis.text.y   = element_text(size=12),
        axis.text.x   = element_text(size=9,angle = 90, vjust = 0.5, hjust=1),
        axis.title.y  = element_text(size=12),
        axis.title.x  = element_text(size=12),
        panel.background = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        axis.line = element_line(colour = "black"),
        panel.border = element_rect(colour = "black", fill=NA, size=1)
  )
  
  
  p+ p1+p2+
  plot_layout(ncol = 1)


