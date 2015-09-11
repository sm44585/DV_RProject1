#This creates the graph showing out of male and female passengers, who survived the sinking by passenger class 
require(extrafont)
ggplot() + 
  coord_cartesian() + 
  scale_x_discrete() +
  scale_y_continuous() +
  facet_grid(PCLASS~SURVIVED, labeller=label_both) +
  labs(title='Titanic') +
  labs(x="Survived", y=paste("Fare")) +
  layer(data=Titanic_NoNullSex_df, 
        mapping=aes(x=as.character(SEX), y=as.numeric(as.character(FARE)), color=SEX), 
        stat="identity", 
        stat_params=list(), 
        geom="point",
        geom_params=list(), 
        #position=position_identity()
        position=position_jitter(width=0.3, height=0)
  )
