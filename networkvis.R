library(tidyverse)
library(igraph)
library(ggraph)
library(graphlayouts)



read.csv(file.choose()) -> tweets

tweets%>%select(screen_name,retweet_screen_name)%>%
  separate_rows(retweet_screen_name, sep = " ")%>%
  filter(retweet_screen_name != "") -> tweets_necessary_columns


nodes <- data.frame(name = unique(c(tweets_necessary_columns$screen_name, 
                                     tweets_necessary_columns$retweet_screen_name)), stringsAsFactors = FALSE)





preliminary <- graph_from_data_frame(tweets_necessary_columns, directed = FALSE, vertices = nodes)



V(preliminary)$clu <-  as.character(membership(cluster_louvain(preliminary)))
V(preliminary)$size <-  degree(preliminary)


for (i in 1:503) {
  if("drfahrettinkoca" %in% V(decompose(preliminary)[[i]])$name){
    print(i)
  } else{
  }
}

# Networks that have a diameter more than 5
elements <- decompose(preliminary)[[1]]
for (i in 1:503) {
  if(diameter(decompose(preliminary)[[i]])>= 5){
  elements <-  decompose(preliminary)[[i]] + elements
  } else{
  }
}
#Conspiracy network
elements <- decompose(preliminary)[[1]]





V(elements)$clu <-  as.character(membership(cluster_louvain(elements)))
V(elements)$size <-  0.0000001
V(elements)$weights <- 0.01


ggraph(elements, layout = 'stress') + 
  geom_node_point(aes(size = degree(elements), color = clu))+
  geom_node_text(aes(label = NA)) + 
  geom_edge_link(alpha = 0.1, color = "grey66")+ 
  theme_graph(foreground = 'steelblue', fg_text_colour = 'white')



##Impactful Users
ggraph(elements, layout = 'stress') + 
  geom_node_point(aes(size = degree(elements)),color = "burlywood1") +
  geom_node_text(aes(label = ifelse(centralization.degree(elements)$res>=100,V(elements)$name,NA))) + 
  geom_edge_link(alpha = 0.05, color = "grey66")+ 
  theme_graph(foreground = 'steelblue', fg_text_colour = 'white')

##Colors with Respect to Centralities

ggraph(elements, layout = 'stress') + 
  geom_node_point(aes(size = degree(elements)),color = ifelse( centralization.degree(elements)$res>=100,"goldenrod4","burlywood1")) +
  geom_node_text(aes(label = NA)) + 
  geom_edge_link(alpha = 0.05, color = "grey66")+ 
  theme_graph(foreground = 'steelblue', fg_text_colour = 'white')


