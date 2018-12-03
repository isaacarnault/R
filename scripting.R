# Reading our dataset
MyData <- read.csv(file="/home/zaki/Desktop/countries_R.csv",
          header=TRUE, sep=",")

# Performing first visualization using `.ggvis` library. We call `layer_points` function
MyData %>% 
  ggvis(~Server, ~Nodes) %>%
  layer_points() %>%
  layer_points(fill = ~Company)

# Performing second visualization using `.ggvis` library. We call `layer_points` function
MyData %>% 
  ggvis(~Id, ~Nodes) %>% 
  layer_points(size := 25, shape := "diamond", stroke := "red", fill := NA)

# Performing third visualization using `.ggvis` library. Calling `layer_boxplots` and `layer_points` functions
MyData %>% ggvis(~Id, ~Nodes) %>%
  layer_boxplots() %>%
  layer_points(fill = ~Company)

# Performing fourth visualization using `.ggvis` library. Calling `layer_lines` and `layer_points` functions
MyData %>%
  ggvis(~Id, ~Nodes, stroke := "skyblue",
        strokeOpacity := 0.5, strokeWidth := 5) %>%
  layer_lines() %>%
  layer_points(fill = ~Company,
               shape := "triangle-up",
               size := 300)

# Performing first visualization using `.ggplot2` package. Using `boxplot` function
boxplot(Nodes~Id,data=MyData, main="Nodes per Company using Hadoop", 
        xlab="Nodes", ylab="Nodes")
