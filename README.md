# Data exploration and visualization using R

[![Project Status: Active – The project has reached a stable, usable state and is being actively developed.](https://www.repostatus.org/badges/latest/active.svg)](https://www.repostatus.org/#active)

One program using R for data visualization.<br>
This gist helps you learn how to create a dataset from end-to-end in `.csv`, reading that file with `R Studio` and performing some data analysis and vizualization on it.
</hr>

## Prerequisites : the story you want to tell
To implement data visualization in R programming, you should have some interest for data you use daily either in your job or at uni. Before I created this gist, I imagined how my data vizualisation could be of interest to `Hadoop` professionals on social networks since ultimately I share my gist to my Twitter and Linkedin followers. I therefore decided to find some available data related to this technology that could be interesting, to create a dataset in which I would use these data, to read this dataset using R, to perfom some analysis and cleaning operations on this dataset and to create a vizualisation chart that could tell a story about this dataset.

## How to : create a data visualization in R programming
The following steps will help you visualize "the number of nodes in a Hadoop cluster used by major tech companies" (the story that I want to tell). To implement what I did, you may wish to proceed as follows:
- you can follow the below steps to understand all the steps from end-to-end
- or you can use <b>program.rda</b> in R Studio or in your favorite workbench to check the output
<hr>
* Steps<br>
1. Check https://who.is for retrieving data you'll use in your dataset (e.g: search for https://last.fm)<br>
2. Create a new file using `notepad` (I'm using `notepadqq` on Ubuntu 18.04 bionic)<br>
3. Create a 6 column dataset<br>
  3.a Name your columns company, nodes, country, server_type, server_version, Id<br>
  3.b Create 20 observations (an observation is equal to a row, 20 obs = 20 rows)<br>
  3.c Make sure to store data in each cell of your dataset (if you have no available data, use <b>"Unknown"</b><br>
  3.d Save your file in `.csv`<br>
4. Make sure you have R Studio installed on your machine (see section Running the tests)<br>

<b>Important</b>
(If you are not using Linux/Unix and still want to try this R datavisualization program:
* use https://labs.cognitiveclass.ai (create a free account, then click on "JupyterLab" in the Build Analytics section)
* use https://dataplatform.ibm.com (recommended for IBM Coders))

5. Open your file with R and vizualize it<br>
6. Create a new `R` script, install and load the four packages we are using (refer to <b>Tips.md</b> to know how.<br>
7. Open your `.csv` in R and explore the data (refer to <b>Tips.md</b> to know how.

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

* [Notepadqq](https://notepadqq.com/wp/download) - A text editor - Unix/Linux
* [R Studio](https://linuxhint.com/rstudio-for-ubuntu) - A statistical computing environment (Linux/Unix)
* [ggvis](https://ggvis.rstudio.com/) - a data visualization package for creating histograms R
* [ggplot2](https://ggplot2.tidyverse.org) - a famous package for plotting in `RStudio`
* [BoxPlot](https://www.statmethods.net/graphs/boxplot.html) - a great package available in the `CRAN`

- This dataset was created using notepadqq.<br>
- Data is sorted by company name, number of nodes, country name, server type, server version and position in the table.<br>
- Save the code below in .csv and read it using RStudio before you invoke vizualisation functions.<br>
- Data are provided by various sites. Some of them are listed below:<br>

[Who.is](https://who.is)<br>
[Wiki.apache.org](https://wiki.apache.org/hadoop/PoweredBy)

## Versioning

I used no vesioning system for this gist. My repository's status is flagged as <b>active</b> because it has reached a stable, usable state. Original [gist](https://gist.github.com/aiPhD/16d757d8eff227ae624f1852fe1c8a91) related to this repository is pending as <b>concept</b>.

## Author

* **Isaac Arnault**

## Licence

All public gists https://gist.github.com/aiPhD<br>
Copyright 2018, Isaac Arnault<br>
MIT License, http://www.opensource.org/licenses/mit-license.php

## Exercise
As a project Manager, your are asked by your IT Manager to show the biggest Hadoop clusters on a world map<br>
* Create a dataset of four variables (Id, Company, Nodes, Country, Server) and twenty observations
* Create your dataset by using data from this [Slideshare](https://fr.slideshare.net/chopramanish/organizations-with-largest-hadoop-clusters)
* Access [WhoIs](https://who.is) to find server Region of Companies and assign Nodes and Id per each Ecompany
* Tip: you can use`ggmap` and `tidyverse` packages. Check <b>exercise_solution.md</b>.
