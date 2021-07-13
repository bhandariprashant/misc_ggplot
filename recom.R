#basic skeleton of recombination plot
#plotting two chromosomes

p<- ggplot(dat1) + 
  geom_point(aes(x =Mbp , y = consensus_cm_mb), col="orange",size = 2,width=0.5) +
    geom_point(aes(x =Mbp , y = fla_cm_mb),col="red", size = 2,width=0.5) +
	    geom_point(aes(x =Mbp , y = nc_cm_mb),col="dark green", size = 2,width=0.5) +
  labs(x="Position (Mbp)", y="Recombination rate (cM/Mb)") + ylim(c(0,4))+scale_color_npg()+
  facet_wrap(~chr)+
   theme(axis.text.y   = element_text(size=24),
        axis.text.x   = element_text(size=24),
        axis.title.y  = element_text(size=24),
        axis.title.x  = element_text(size=24),
        panel.background = element_blank(),
        panel.grid.major = element_blank(), 
        panel.grid.minor = element_blank(),
        axis.line = element_line(colour = "black"),
	 strip.text = element_text(size = 24), #increases the font size at facet wrap
        panel.border = element_rect(colour = "black", fill=NA, size=1)
  )
  
p

ggsave("fig2.png", width = 10, height = 7.5, device='png', dpi=700)
