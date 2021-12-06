
#install.packages("ggplot2")


#Lets us use the ggplot2 package
library(ggplot2)

ggplot(cars)

#First plot 
ggplot(cars) + aes(x=speed, y=dist) + geom_point()

#Second plot more geoms
ggplot(cars) + aes(x=speed, y=dist) + geom_point() + geom_smooth()

#Finished plot
ggplot(cars) + aes(x=speed, y=dist) +geom_point() +
  labs(title="Speed and Stopping Distances of Cars",
       x="Speed (MPH)", y="Stopping Distance (ft)",
       subtitle = "Informative subtitle",
       caption="Dataset: 'cars'") +
  geom_smooth(method="lm", se=FALSE) +
  theme_bw()


#Example data set, differential expression analysis
url <- "https://bioboot.github.io/bimm143_S20/class-material/up_down_expression.txt"
genes <- read.delim(url)
head(genes)


#Genes plot
ggplot(genes) + aes(x=Condition1, y = Condition2) + geom_point()

#Genes plot with color
p <- ggplot(genes) + 
  aes(x=Condition1, y=Condition2, col=State) +
  geom_point()
p

#Specify desired colors
p + scale_colour_manual( values=c("blue","gray","red") )

#adding labels
p + 
labs(title="Gene Expression Changes Upon Drug Treatment",
     x="Control (no drug)", 
     y="Drug")