* Install and load the three packages we are using. Use the CRAN or install & load them from your R Script<br>

<details>
<summary>install ggplot2</summary>
<p>
  
```R
install.packages('ggplot2')
```
</p>
</details>

<details>
<summary>activate ggplot2</summary>
<p>

```R
library('ggplot2')
```
</p>
</details>

<br>

<details><summary>install ggvis</summary>
<p>
  
```R
install.packages('ggvis')
```
</p>
</details>

<details>
<summary>activate ggvis</summary>
<p>
  
```R
library('ggvis')
```
</p>
</details>

<br>

<details><summary>install BoxPlot</summary>
<p>
  
```R
install.packages('BoxPlot')
```
</p>
</details>

<details>
<summary>activate BoxPlot</summary>
<p>
  
```R
library('BoxPlot')
```
</p>
</details>

<hr>

* Open your `.csv` in `RStudio` and explore the data. You have the file hosted on your PC.

 ```python
Dataset_1 <- read.csv(file="filepath/myfile.csv", header=TRUE, sep=",")
```
* Or you can read your file in `RStudio` if having the `.csv` hosted on a remote site<br>

```python
Dataset_1 <- read.csv("http://fileurl/myfile.csv", header=TRUE, sep=",")
```
<hr>

* Launching R using your terminal

<details><summary>see code</summary>
<p>
  
```python
R
```
</p>
</details>

* Launching Jupyter using your terminal

<details><summary>see code</summary>
<p>
  
```python
jupyter notebook
```
</p>
</details>

* If you don't have R and Jupyter installed, you can still use the following links:<br>
[RStudio](https://www.rstudio.com/products/rstudio/download/) - Download RStudio Desktop (Open Source Licence)<br>
[Jupyter Notebook](https://jupyter.readthedocs.io/en/latest/install.html) - You don't need to install, see <b>Tips.md</b>)

* If you need to access / search data related to this gist and its exercise, please check:<br>
[Who.is](https://who.is)<br>
[Wiki.apache.org](https://wiki.apache.org/hadoop/PoweredBy) <br>
[Hostingchecker.com](https://hostingchecker.com/)
