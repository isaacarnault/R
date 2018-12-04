Ignore below outputs if programs ran correctly.<br>
If you begin in `R` using `Jupyter Notebook` these are what you should get:

* Creating a dataset, saving it in `.csv` and reading it with `Jupyter Notebook`</b>

<details><summary>dataset</summary>
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
20, Yahoo, 40000, Ats, NA, 98
```

</p>
</details>

[![isaac-arnault-datavisualization-using-R-1.png](https://i.postimg.cc/HsJbkdSq/isaac-arnault-datavisualization-using-R-1.png)](https://postimg.cc/hfBXCWRs)

* Reading our dataset
<details><summary>first argument</summary>
<p>
  
```python
# Reading dataset using Jupyter Notebook
MyData <- read.csv(file="/home/zaki/Desktop/countries_R.csv")
```

</p>
</details>

[![isaac-arnault-datavisualization-using-R-1.png](https://i.postimg.cc/SRcdj4d7/isaac-arnault-datavisualization-using-R-1.png)](https://postimg.cc/WqbgfQQh)

* Exploring our dataset
<details><summary>dim() function</summary>
<p>
  
```python
# 2. Showing the dimensions of the dataset by variables (columns) and observations (rows)
MyData <- read.csv(file="dataset_hadoop.csv")
MyData

dim(MyData)
```

</p>
</details>

[![isaac-arnault-datavisualization-using-R-2.png](https://i.postimg.cc/RFypNXB9/isaac-arnault-datavisualization-using-R-2.png)](https://postimg.cc/9RPYkP0N)

* Exploring our dataset
<details><summary>str() function</summary>
<p>
  
```python
# 2. Showing the structure of the dataset
MyData <- read.csv(file="dataset_hadoop.csv")
MyData

str(MyData)
```

</p>
</details>

[![isaac-arnault-datavisualization-using-R-3.png](https://i.postimg.cc/pTp1W33q/isaac-arnault-datavisualization-using-R-3.png)](https://postimg.cc/zbYkp2zg)

* Exploring our dataset
<details><summary>summary() function</summary>
<p>
  
```python
# 3 Summary statistics on the variables (columns) of our dataset
MyData <- read.csv(file="dataset_hadoop.csv")

summary(MyData)
```

</p>
</details>

[![isaac-arnault-datavisualization-using-R-5.png](https://i.postimg.cc/RFyKcYhs/isaac-arnault-datavisualization-using-R-5.png)](https://postimg.cc/qhcNrj8y)


* Exploring our dataset
<details><summary>colnames() function</summary>
<p>
  
```python
# 4 Showing the name of each variable (column) of our dataset
MyData <- read.csv(file="dataset_hadoop.csv")
MyData

colnames(MyData)
```

</p>
</details>

[![isaac-arnault-datavisualization-using-R-6.png](https://i.postimg.cc/6Q6mS8cs/isaac-arnault-datavisualization-using-R-6.png)](https://postimg.cc/BjypPQRN)

* Exploring our dataset
<details><summary>head() function</summary>
<p>
  
```python
# 5  Showing the first 6 rows of our dataset
MyData <- read.csv(file="dataset_hadoop.csv")

head(MyData)
```

</p>
</details>

[![isaac-arnault-datavisualization-using-R-7.png](https://i.postimg.cc/pTzX6ck1/isaac-arnault-datavisualization-using-R-7.png)](https://postimg.cc/8JkSFH2h)


* Exploring our dataset
<details><summary>tail() function</summary>
<p>
  
```python
# 6  Showing the last 6 rows of our dataset
MyData <- read.csv(file="dataset_hadoop.csv")

tail(MyData)
```

</p>
</details>

[![isaac-arnault-datavisualization-using-R-8.png](https://i.postimg.cc/Fzvs5bBF/isaac-arnault-datavisualization-using-R-8.png)](https://postimg.cc/7GBySz4j)
