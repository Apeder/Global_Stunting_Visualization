Visualization of ["Stunting Disparities by Residence and Wealth Quintile"](http://data.unicef.org/nutrition/malnutrition.html)
======

Summary
------

While normally first to grab a torch and pitchfork and take a run at Excel, my conclusion was UNICEF's single flat file contained more data for less work than both fancy, bespoke data explorers from the [World Health Organization](http://gamapserver.who.int/gho/interactive_charts/mdg1/atlas.html) and [International Food Policy Research Institute](https://public.tableau.com/profile/publish/GNR2015/2015GNR#!/publish-confirm). UNICEF's excel files were cleaner and easier to parse, and they already included names and ISO country codes, which will also saved time.  

Data was loaded, cleaned and reformatted using Pandas and Ggplot2 [here](https://github.com/Apeder/Global_Stunting_Visualization/tree/master/Data/Raw_Data_Cleaning)

Why add yet another visualization of childhood malnutrition to the pile? None of the visualizations looked at the trends over time, and I found it difficult to get a sense of how countries and regions compared to one another over time. Another interesting observation is seeing these vital humanitarian measures come "online," as more countries began reporting data. 

The animated timeseries choropleth is live here: 

https://apeder.github.io/Global_Stunting_Visualization/

Design
----

Why stunting? Stunting is irrevocable damage malnutrition inflicts on children, and once stunted, children will likely never fully recover.  In human terms, the problem still extends to hundreds of millions of people around the world, though some fervent optimists have still find cause to celebrate the "golden age" the world is entering. 

As previous visualizations don't include a time dimension, nor allow global comparisons, the primary design criteria was to show how the rate of stunting has changed globally over time. 

Feedback
-----



Resources
------
Used Rich Donohue's code as a template 

* http://bl.ocks.org/rgdonohue/9280446

Creating Geo/TopoJson files 

* http://www.tnoda.com/blog/2013-12-07

Tooltips

* http://bl.ocks.org/lhoworko/7753a11efc189a93637

Legend 

* http://d3-legend.susielu.com/
