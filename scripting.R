# Reading our dataset
MyData <- read.csv(file="dataset_hadoop.csv",
          header=TRUE, sep=",")
MyData

# ggvis: first visualization using `layer_points` function
MyData %>% 
  ggvis(~Server, ~Nodes) %>%
layer_points()

# ggvis: improving the above script by sorting the graph per Server per Nodes per Company
MyData %>% 
  ggvis(~Server, ~Nodes) %>%
  layer_points() %>%
layer_points(fill = ~Company))

# ggvis: third visualization using layer_points, diamond shape
MyData %>% 
  ggvis(~IP, ~Nodes) %>% 
  layer_points(size := 25, shape := "diamond", stroke := "red", fill := NA)

# ggvis: fourth visualization using layer_lines, layer_points, triangle shape
MyData %>%
  ggvis(~IP, ~Nodes, stroke := "skyblue",
        strokeOpacity := 0.5, strokeWidth := 5) %>%
  layer_lines() %>%
  layer_points(fill = ~Company,
               shape := "triangle-up",
               size := 300)

# ggplot: first visualization using geom_bar
g <- ggplot(MyData, aes(Company))
g + geom_bar(aes(fill=Nodes), width = 0.5) + 
  theme(axis.text.x = element_text(angle=65, vjust=0.6)) + 
  labs(title="Using geom_bar", 
       subtitle="IP Vs Nodes", 
       caption="Author: Isaac Arnault")

# ggplot: second visualization using geom_violin
g <- ggplot(MyData, aes(IP, Nodes))
g + geom_violin(trim=FALSE, fill='#ffffff', color="black") + 
  labs(title="Using geom_violin" , 
       subtitle="IP Vs Nodes",
       caption="Author: Isaac Arnault",
       x="IP",
       y="Nodes")

# ggplot: third visualization using geom_point, geom segment, shape: tomato
ggplot(MyData, aes(x=IP, y=Nodes)) + 
  geom_point(col="tomato2", size=3) + 
  geom_segment(aes(x=IP, 
                   xend=IP, 
                   y=min(Nodes), 
                   yend=max(Nodes)), 
               linetype="dashed", 
               size=0.1) +  
  labs(title="Using geom_points and geom_segment", 
       subtitle="IP Vs Nodes",
       caption="Author: Isaac Arnault")
