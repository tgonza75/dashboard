#scatterplot dealing w/ Babe Ruth--------------------------------

result<-Batting%>%
  filter(playerID=='ruthba01')%>%
  select(yearID,SO,HR)

ggplot()+
  geom_point(data=result,aes(x=SO,y=HR))+
  xlab("Strikeouts")+
  ylab("Homeruns")

#histogram

ggplot()+
  geom_histogram(data=result,aes(x=HR),bins=5, color="blue",fill="white")+
  xlab("Homeruns")

#time series

ggplot()+
  geom_point(data=result,aes(x=yearID,y=HR))+
  geom_line(data=result,aes(x=yearID,y=HR))+
  xlab("Year")+
  ylab("Homeruns")

