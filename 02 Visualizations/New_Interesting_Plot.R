#This creates the graph showing the fares charged for males and females by passenger class 
require(extrafont)
require(ggplot2)
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
        position=position_jitter(width=0.3, height=0)
  )+
  layer(data=Titanic_NoNullSex_df,
        mapping=aes(x=SEX, y=as.numeric(as.character(FARE)), color=SEX),
        stat="boxplot",
        stat_params=list(),
        geom="boxplot",
        geom_params=list(color="red",fill="red", alpha=.4),
        posiion=position_identity()
  )
