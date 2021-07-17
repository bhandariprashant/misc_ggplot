library(patchwork)
p1 <- ggplot(dat1)+
geom_col(aes(x=Alleles, y=Proportion))+
scale_color_npg()+
labs(x="Alleles", y="Proportion") + ylim(c(0,80))+scale_color_npg()+
   theme(axis.text.y   = element_text(size=12),
        axis.text.x   = element_text(size=12,angle = 90, vjust = 0.5, hjust=1), #rotates label corretly
        axis.title.y  = element_text(size=12),
        axis.title.x  = element_text(size=12),
        panel.background = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        axis.line = element_line(colour = "black"),
        panel.border = element_rect(colour = "black", fill=NA, size=1)
  )

  

p2 <- ggplot(dat1)+
geom_col(aes(x=Alleles, y=Average))+
scale_color_npg()+
labs(x="Alleles", y="Average") + ylim(c(0,175))+scale_color_npg()+
   theme(axis.text.y   = element_text(size=12),
        axis.text.x   = element_text(size=12,angle = 90, vjust = 0.5, hjust=1),
        axis.title.y  = element_text(size=12),
        axis.title.x  = element_text(size=12),
        panel.background = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        axis.line = element_line(colour = "black"),
        panel.border = element_rect(colour = "black", fill=NA, size=1)
  )

  
 p1+p2


ggsave("four_alleles_FN.pdf",width=9,height=3,device='pdf',dpi=700)
