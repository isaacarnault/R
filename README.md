# Data exploration and visualization using R

[![Project Status: Active – The project has reached a stable, usable state and is being actively developed.](https://www.repostatus.org/badges/latest/active.svg)](https://www.repostatus.org/#active)

## Scripting in R and Jupyter
The following gist helps you learn how to create a dataset from end-to-end and performing some data exploration and vizualization.
</hr>

## Prerequisites : the story you want to tell
To implement data visualization in R programming, you should have some interest for data you use daily either in your job or at uni. Before I created this gist, I imagined how my data visualization could be of interest to `Hadoop` professionals on social networks since ultimately I share my gist to my Twitter and Linkedin followers. I therefore decided to find some available data related to this technology that could be interesting, to create a dataset in which I would use these data, to read this dataset using R, to perfom some analysis and cleaning operations on this dataset and to create a vizualisation chart that could tell a story about this dataset.

## How to : make a data exploration and visualization using R
The following steps will help you visualize "the number of nodes in a Hadoop cluster used by major tech companies" (the story that I want to tell). To implement what I did, you may wish to proceed as follows:
- you can follow the below steps to understand all the steps from end-to-end
- or you can use <b>program.rda</b> in R Studio or in your favorite workbench to check the output
---
Steps
- [ ] Check https://who.is for retrieving data you'll use in your dataset (e.g: search for https://last.fm)
- [ ] Open your favorite text editor
- [ ] Name your columns company, nodes, country, server_type, server_version, Id
- [ ] Create 20 observations (an observation is equal to a row, 20 obs = 20 rows)
- [ ] Make sure to store data in each cell of your dataset (if you have no available data, use <b>"NA"</b>
- [ ] Save your file in `.csv`
- [ ] Make sure you have `RStudio` installed on your machine (see <b>Running the tests</b>)
- [ ] Open your file with R and vizualize it
- [ ] Create a new `R` script, install and load the packages (refer to <b>Tips.md</b>
- [ ] Open your `.csv` in R and explore the data (refer to <b>Tips.md</b> to know how
---

## Running the tests
I am using Ubuntu (18.04 bionic).<br>
* Check on your shell if R Studio is correctly installed using this:

Check `RStudio` version
```R
$ R --version
```
Check `Jupyter Notebook` version
```R
$ jupyter --version
```
</p>
</details>

You need `RStudio` and `Jupyter Nptebook` installed on your PC to proprely use this gist.<br>
`Jupyter Notebook` is not compulsory. It is another way to read `R` programming scripts.<br>
You can still use `Jupyter Notebook` on remote sites to perform same operations you would perform in `RStudio`.<br>
* use https://labs.cognitiveclass.ai (create a free account, then click on "JupyterLab" in the Build Analytics section)<br>
* use https://dataplatform.ibm.com (recommended for IBM Coders)

## Built With

* [Notepadqq](https://notepadqq.com/wp/download) - A text editor - Linux/Unix
* [R Studio](https://linuxhint.com/rstudio-for-ubuntu) - A statistical computing environment
* [ggvis](https://ggvis.rstudio.com/) - a package for creating histograms
* [ggplot2](https://ggplot2.tidyverse.org) - a famous package for plotting in `R`

- This dataset was created using notepadqq.<br>
- Data is sorted by company name, number of nodes, country name, server type, server version and position in the table.<br>
- Save the code below in .csv and read it using RStudio before you invoke vizualisation functions.<br>
- Data are provided by various sites. Some of them are listed in <b>Tips.md</b>

## Versioning

I used no vesioning system for this gist. My repository's status is flagged as <b>active</b> because it has reached a stable, usable state. Original [gist](https://gist.github.com/aiPhD/f4cdef7878e88ee2bed1254a2b5fbcb5) related to this repository is pending as <b>concept</b>.

## Author

* **Isaac Arnault**

## Licence

All public gists https://gist.github.com/aiPhD<br>
Copyright 2018, Isaac Arnault<br>
MIT License, http://www.opensource.org/licenses/mit-license.php

## Exercise
As an IT or Big Data Project Manager, your are asked by the Information System Manager to use a dataset in order to make some presentation of one of the biggest `Hadoop` clusters in the world.<br>
* Create your dataset by using data from this [Slideshare](https://fr.slideshare.net/chopramanish/organizations-with-largest-hadoop-clusters)
* Consider the following range of data while extracting them from the above link: dataset = {2, 21}
* Name the variables of your dataset Id, Company, Nodes, Country, Server
* Go to <b>Tips.md</b> to find sources where you can find Server name and Country
* Assign to each Id a Company, number of Nodes, Country and Server Name
* Read your dataset using `RStudio` or `Jupyter`
* Use `Jupyter` to perform some exploration of your dataset
* Use `RStudio` to perform some visualisation of your dataset:
  1. Install and activate ggvis and ggplot2 packages from the CRAN
  2. Use geom_dotplot function for plotting. Sort the graph by Company per Nodes.
* Question: How many companies use {500, 1500} nodes? Name the companies while visualizing the graph.
