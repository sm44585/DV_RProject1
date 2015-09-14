require(ggplot2)
df<-Titanic_NoNullSex_df
ggplot(data=df,aes(x=SEX, y=as.numeric(as.character(FARE)), color=as.character(SURVIVED))) + 
  coord_cartesian() + 
  scale_x_discrete() +
  scale_y_continuous() +
  labs(title='Titanic',x="SURVIVED", y=paste("FARE")) +
  geom_point(stat="identity",position=position_jitter(width=.3, height=0))
