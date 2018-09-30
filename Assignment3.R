# Q2
library("gapminder")
library("tidyverse")
data <- gapminder
colnames(data)

dataplot <- filter(data, year == 2007) 
dataplot%>%
  ggplot(aes(x =gdpPercap, y =lifeExp))+
  geom_point()+
  geom_text(data = dataplot[dataplot$gdpPercap>40000,], aes(label = country), color = "blue")+
  labs(x = "GDP per capita", y = "life expextancy")+
  theme_bw()


# Q2 Adjust

dataplot%>%
  ggplot(aes(x =gdpPercap, y =lifeExp))+
  geom_point(shape = 1, size = 2, stroke = 1.5)+
  annotate("rect", xmin = 39000, xmax = 51000, ymin = 75, ymax = 85, fill = "red", alpha = 0.2)+
  annotate("text", x = 45000:44998, y = 73:71, label = c("Countries with", "", "highest GDP"), size = 4.5)+
  labs(x = "GDP per capita", y = "life expextancy")+
  theme_bw()
