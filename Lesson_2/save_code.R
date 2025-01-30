-   In this code chunk, we load the data we have saved before.
-   Quarto files directly run in the folder where they are saved, so here directly in the write_up folder.

```{r, eval=F}
load("lesson2_environment.RData")
```

-   Start writing normal text (as below) in your document. Using \# turns text into a title in Markdown.

```{Markdown, eval = F}
# Data

Here is a look at our two data frames. First is the one we read in, the second is our subset with just the cat's data. 


# Figure


Here's a figure of the weight of different pets in the dataset.
```

-   Now, we will fill in code chunks to present our data and figure. Use `Ctrl+Alt+I` to insert them in the right places.
-   Use `head(data)` and `head(data_cats)` to present your data sets under \# Data.\
-   Use the object in which you stored the plot for the figure (`data.plot`) under \# Figure.
-   This is how it should look like:
  
  ```{r, echo=F}
knitr::include_graphics('images/quarto_report.png')
```

-   If you click on **Render** at the top, you will get a HTML file with your report. Open it from the folder.

```{r, echo=F}
knitr::include_graphics('images/render.png')
```

-   You can simply switch the format to `format: docx` at the top, then render again as a Word document.
-   format: pdf would also work, but takes a bit longer the first time because of installations.

::: callout-tip
You can write a lot of your code directly in Quarto Documents, allowing to combine your results (tables, figures) with interpretations directly in the same document. Lead through your entire analyses step by step. If a step needs a lot of code, move that code to a script in the code folder, and call the script from your Quarto document using the function `source()`. For example, you could first call a script that cleans the data, then make figures and run statistical tests directly in the Quarto Document.
:::
  
  ## References
  
  -   The completed code for the lesson can be found [here](https://github.com/hannahmetzler/R_intro_lesson2).

This lesson is based on:
  
  -   Page Piccinini, R-Course, [Lesson 1: R Basics](https://pagepiccinini.com/r-course/lesson-1-r-basics/).

-   Chapter 2 of: Lisa DeBruine & Dale Barr. (2022). [Data Skills for Reproducible Research](https://psyteachr.github.io/reprores-v3/intro.html): (3.0) Zenodo. doi:10.5281/zenodo.6527194.
