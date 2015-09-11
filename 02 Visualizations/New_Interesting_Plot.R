#This creates the graph showing the fares charged for males and females by passenger class 
require(extrafont)
ggplot() + 
  coord_cartesian() + 
  scale_x_discrete() +
  scale_y_continuous() +
  facet_grid(.~PCLASS) +
  labs(title="Titanic fare's charged by class") +
  labs(x="Gender", y=paste("FARE")) +
  layer(data=Titanic_NoNullSex_df, 
        mapping=aes(x=SEX, y=as.numeric(as.character(FARE)), color=SEX), 
        stat="identity", 
        stat_params=list(), 
        geom="point",
        geom_params=list(), 
        #position=position_identity()
        position=position_jitter(width=0.3, height=0)
  )
