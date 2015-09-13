require(ggplot2)
ggplot(data=Titanic_df,aes(x=as.numeric(as.character(AGE)), y=as.numeric(as.character(FARE)), color=SEX)) + 
  coord_cartesian() + 
  scale_x_continuous() +
  scale_y_continuous() +
  #facet_grid(SURVIVED) +
  labs(title='Titanic',x="Age", y=paste("Fare")) +
  geom_point(stat="identity",position=position_jitter(width=.3, height=0))
