p<- ggplot(dat1) + 
  geom_col(aes(x =X , y = Y), size = 1,width=0.5) +
  labs(x="Xaxis") + ylim(c(0,50))+scale_color_npg()+
   theme(axis.text.y   = element_text(size=14),
        axis.text.x   = element_text(size=14),
        axis.title.y  = element_text(size=14),
        axis.title.x  = element_text(size=14),
        panel.background = element_blank(),
        panel.grid.major = element_blank(), 
        panel.grid.minor = element_blank(),
        axis.line = element_line(colour = "black"),
        panel.border = element_rect(colour = "black", fill=NA, size=1)
  )

  
p+coord_flip()

ggsave("OUT.png", width = 10, height = 7.5, device='png', dpi=700)
