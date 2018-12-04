# Reading our dataset
MyData <- read.csv(file="dataset_hadoop.csv",
          header=TRUE, sep=",")
MwData

# Performing 1st visualization using `.ggvis` library. Function: layer_points.
MyData %>% 
  ggvis(~Server, ~Nodes) %>%
  layer_points()

# Performing 2nd visualization by highlighting Server per Nodes per Company. The script improves the output of the above script.
MyData %>% 
  ggvis(~Server, ~Nodes) %>%
  layer_points() %>%
  layer_points(fill = ~Company)

# Performing 3rd visualization using `.ggvis` library. Function: layer_points.
MyData %>% 
  ggvis(~IP, ~Nodes) %>% 
  layer_points(size := 25, shape := "diamond", stroke := "red", fill := NA)

# Performing 4th visualization using `.ggvis` library. Functions: layer_lines, layer_points.
MyData %>%
  ggvis(~IP, ~Nodes, stroke := "skyblue",
        strokeOpacity := 0.5, strokeWidth := 5) %>%
  layer_lines() %>%
  layer_points(fill = ~Company,
               shape := "triangle-up",
               size := 300)

# Performing 5th visualization using `.ggplot` library. Function: geom_bar.
g <- ggplot(MyData, aes(Company))
g + geom_bar(aes(fill=Nodes), width = 0.5) + 
  theme(axis.text.x = element_text(angle=65, vjust=0.6)) + 
  labs(title="Using ggplot - Histogram on a categorical variable", 
       subtitle="IP Vs Nodes", 
       caption="Author: aiPhD")
