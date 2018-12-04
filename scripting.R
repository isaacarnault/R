# Reading our dataset
MyData <- read.csv(file="/home/zaki/Desktop/countries_R.csv",
          header=TRUE, sep=",")

# Performing first visualization using `.ggvis` library. We use `layer_points` function.
MyData %>% 
  ggvis(~Server, ~Nodes) %>%
  layer_points()

# Improving the above script by sorting the graph per Server per Nodes per Company. We call `layer_points` function.
MyData %>% 
  ggvis(~Server, ~Nodes) %>%
  layer_points() %>%
  layer_points(fill = ~Company)

# Performing third visualization using `.ggvis` library. We call `layer_points` function
MyData %>% 
  ggvis(~IP, ~Nodes) %>% 
  layer_points(size := 25, shape := "diamond", stroke := "red", fill := NA)

# Performing fourth visualization using `.ggvis` library. We call `layer_points` function
MyData %>%
  ggvis(~IP, ~Nodes, stroke := "skyblue",
        strokeOpacity := 0.5, strokeWidth := 5) %>%
  layer_lines() %>%
  layer_points(fill = ~Company,
               shape := "triangle-up",
               size := 300)
