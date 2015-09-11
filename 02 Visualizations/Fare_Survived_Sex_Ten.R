#This creates the graph showing out of male and female passengers aged 10 years old or younger, who survived the sinking by passenger class 
require(extrafont)
ggplot() + 
  coord_cartesian() + 
  scale_x_discrete() +
  scale_y_continuous() +
  facet_grid(PCLASS~SURVIVED, labeller=label_both) +
  labs(title='Titanic where age <= 10') +
  labs(x="Survived", y=paste("Fare")) +
  layer(data=Titanic_Age_Less_10_df, 
        mapping=aes(x=as.character(SEX), y=as.numeric(as.character(FARE)), color=SEX), 
        stat="identity", 
        stat_params=list(), 
        geom="point",
        geom_params=list(), 
        #position=position_identity()
        position=position_jitter(width=0.3, height=0)
  )
