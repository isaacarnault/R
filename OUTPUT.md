Ignore below outputs if the scripts ran correctly.<br>

* Creating a dataset, saving it in `.csv` and reading it with `Jupyter Notebook`</b>

<details><summary>see raw format</summary>
<p>
  
```python
# Raw format
Id, Company, Nodes, Server, Version, IP
1, Adobe, 3, Apache, NA, 193
2, Crowdmedia, 5, Apache, NA, 88
3, Beebler, 14, Nginx, 1.11.9, 54
4, Bixolabs, 20, Nginx, 1.14.0, 50
5, Careers, 15, Nginx, NA, 185 
6, Contextweb, 50, Openresty, NA, 52
7, Criteo, 2000, Nginx, NA, 178
8, Ebay, 532, NA, NA, 66
9, Facebook, 1400, NA, NA, 31
10, Infochimps, 30, Nginx, NA, 23
11, Lastfm, 100, nginx, NA, 64
12, Mercadolibre, 20, Tengine, NA, 54
13, Openneptune, 200, Apache, NA, 103
14, Quantcast, 3000, Apache, NA, 34
15, Rackspace, 30, Akamaighost, NA, 173
16, Rakuten, 69, Akamaighost, NA, 203
17, Spotify, 1650, Aginx, NA, 104
18, Telenav, 60, CentOS, 2.4.6, 35
19, Worldlingo, 44, Nginx, NA, 204
```

</p>
</details>

[![isaac-arnault-datavisualization-using-R-1.png](https://i.postimg.cc/QCc1W6qZ/isaac-arnault-datavisualization-using-R-1.png)](https://postimg.cc/dZtLbjX5)

* Reading our dataset
<details><summary>first argument</summary>
<p>
  
```python
# 1. Reading dataset using Jupyter Notebook
MyData <- read.csv(file="/home/zaki/Desktop/countries_R.csv")
```

</p>
</details>

[![isaac-arnault-datavisualization-using-R-1.png](https://i.postimg.cc/SRcdj4d7/isaac-arnault-datavisualization-using-R-1.png)](https://postimg.cc/WqbgfQQh)

## Data Exploration

* Exploring our dataset

<details><summary>dim() function</summary>
<p>
  
```python
# 2. Showing the dimensions of the dataset by variables (columns) and observations (rows)
MyData <- read.csv(file="dataset_hadoop.csv")

dim(MyData)
```

</p>
</details>

[![isaac-arnault-datavisualization-using-R-3.png](https://i.postimg.cc/vTw6Mrwq/isaac-arnault-datavisualization-using-R-3.png)](https://postimg.cc/k6w5vt4K)

* Exploring our dataset

<details><summary>str() function</summary>
<p>
  
```python
# 3. Showing the structure of the dataset
MyData <- read.csv(file="dataset_hadoop.csv")

str(MyData)
```

</p>
</details>

[![isaac-arnault-datavisualization-using-R-4.png](https://i.postimg.cc/2jd1hBDY/isaac-arnault-datavisualization-using-R-4.png)](https://postimg.cc/bdJYjrrV)

* Exploring our dataset

<details><summary>summary() function</summary>
<p>
  
```python
# 4 Summary statistics on the variables (columns) of the dataset
MyData <- read.csv(file="dataset_hadoop.csv")

summary(MyData)
```

</p>
</details>

[![isaac-arnault-datavisualization-using-R-5.png](https://i.postimg.cc/yx0pYygk/isaac-arnault-datavisualization-using-R-5.png)](https://postimg.cc/D4yPxscT)

* Exploring our dataset

<details><summary>colnames() function</summary>
<p>
  
```python
# 5 Showing the name of each variable (column) of the dataset
MyData <- read.csv(file="dataset_hadoop.csv")

colnames(MyData)
```

</p>
</details>

[![isaac-arnault-datavisualization-using-R-6.png](https://i.postimg.cc/htDZcxSt/isaac-arnault-datavisualization-using-R-6.png)](https://postimg.cc/Whyw7dFB)

* Exploring our dataset

<details><summary>head() function</summary>
<p>
  
```python
# 6  Showing the first 6 observations (rows) of the dataset
MyData <- read.csv(file="dataset_hadoop.csv")

head(MyData)
```

</p>
</details>

[![isaac-arnault-datavisualization-using-R-7.png](https://i.postimg.cc/762mmnNm/isaac-arnault-datavisualization-using-R-7.png)](https://postimg.cc/xJ9vdHhz)


* Exploring our dataset

<details><summary>tail() function</summary>
<p>
  
```python
# 7  Showing the first 6 observations (rows) of the dataset
MyData <- read.csv(file="dataset_hadoop.csv")

tail(MyData)
```

</p>
</details>

[![isaac-arnault-datavisualization-using-R-8.png](https://i.postimg.cc/XN9s5xqv/isaac-arnault-datavisualization-using-R-8.png)](https://postimg.cc/fkT7ncx4)

## Data Visualization

* Visualizing our dataset

<details><summary>basic plotting</summary>
<p>
  
```python
# Performing first visualization using `.ggvis` library, using `layer_points` function.
MyData %>% 
  ggvis(~Server, ~Nodes) %>%
layer_points()
```

</p>
</details>

[![isaac-arnault-datavisualization-using-R-9.png](https://i.postimg.cc/xCf1P6YS/isaac-arnault-datavisualization-using-R-9.png)](https://postimg.cc/Ff6vrg7P)

* Visualizing our dataset

<details><summary>improved plotting</summary>
<p>
  
```python
# Improving the above script by sorting the graph per Server per Nodes per Company. We call `layer_points` function.
MyData %>% 
  ggvis(~Server, ~Nodes) %>%
  layer_points() %>%
layer_points(fill = ~Company)
```

</p>
</details>

[![isaac-arnault-datavisualization-using-R-10.png](https://i.postimg.cc/WzKpTjZ2/isaac-arnault-datavisualization-using-R-10.png)](https://postimg.cc/QKQZJ2SP)

* Visualizing our dataset

<details><summary>plotting by IP per Nodes, diamond</summary>
<p>
  
```python
# Performing third visualization using `.ggvis` library. We call `layer_points` function
MyData %>% 
  ggvis(~IP, ~Nodes) %>% 
  layer_points(size := 25, shape := "diamond", stroke := "red", fill := NA)
```

</p>
</details>

[![isaac-arnault-datavisualization-using-R-11.png](https://i.postimg.cc/tT4967tq/isaac-arnault-datavisualization-using-R-11.png)](https://postimg.cc/GB60wL5V)

* Visualizing our dataset

<details><summary>plotting by IP per Nodes, triangles</summary>
<p>
  
```python
# Performing fourth visualization using `.ggvis` library. We call `layer_points` function
MyData %>%
  ggvis(~IP, ~Nodes, stroke := "skyblue",
        strokeOpacity := 0.5, strokeWidth := 5) %>%
  layer_lines() %>%
  layer_points(fill = ~Company,
               shape := "triangle-up",
               size := 300)
```

</p>
</details>

[![isaac-arnault-datavisualization-using-R-12.png](https://i.postimg.cc/jS6TkyMq/isaac-arnault-datavisualization-using-R-12.png)](https://postimg.cc/3kwzk0Mz)

* Visualizing our dataset

<details><summary>plotting by IP per Nodes, triangles</summary>
<p>
  
```python
# Performing 5th visualization using `.ggplot` library. Function: geom_bar.
g <- ggplot(MyData, aes(Company))
g + geom_bar(aes(fill=Nodes), width = 0.5) + 
  theme(axis.text.x = element_text(angle=65, vjust=0.6)) + 
  labs(title="Using ggplot - Histogram on a categorical variable", 
       subtitle="IP Vs Nodes", 
       caption="Author: aiPhD")
```

</p>
</details>

[![isaac-arnault-datavisualization-using-R-14.png](https://i.postimg.cc/j5wC7h7X/isaac-arnault-datavisualization-using-R-14.png)](https://postimg.cc/47GJCVw7)
