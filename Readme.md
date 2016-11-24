Visualizing ["Stunting Disparities by Residence and Wealth Quintile"](http://data.unicef.org/nutrition/malnutrition.html)
======

Summary - UNICEF Wins Open Data Sourcing Challenge
------

While normally first to grab a torch and pitchfork and take a run at Excel, my conclusion was UNICEF's single flat file contained more data for less work than both fancy, bespoke data explorers from the [World Health Organization](http://gamapserver.who.int/gho/interactive_charts/mdg1/atlas.html) and [International Food Policy Research Institute](https://public.tableau.com/profile/publish/GNR2015/2015GNR#!/publish-confirm). UNICEF's excel files were cleaner and easier to parse, and they already included country names and ISO country codes, which will also saved time.

In this case, Google's algorithm did a good job providing quick access to good resources to find quality, accessible data. UNICEF, WHO and Wikipedia get top billing, as they should. 

![UNICEF_Stunting_Summary](http://unicef.in/CkEditor/ck_Uploaded_Images/img_1263.jpg)

The term 'Stunting' is also referred to as "IFPRI Underweight Children" in [Gapminder's dataset](http://www.gapminder.org/tools/#_chart-type=bubbles). The Gapminder data is decently edited, though it would be very nice to have more file portability, or even better a data warehouse that could serve as an API endpoint. [CKAN](http://ckan.org/) could be a good choice, and users in Excel environments might also prefer Tableau server, or nothing at all if they enjoy Microsoft's graphic aesthetic. CKAN does have a growing list of clients, including Data.Gov, https://www.data.gov/developers/apis and  datahub.io, catalog.data.gov and data.gov.uk . A commercial offshoot of the Open Knowledge Foundation offers customization, and Akvo Foundation offers a similar service in Europe. 

Interestingly, I found the dataset I used had been used by NASA http://catalog.data.gov/dataset/poverty-mapping-project-global-subnational-prevalence-of-child-malnutrition to upload to catalog.data.gov in March 2016. And that's where the data honeymoon ends. 

http://sedac.ciesin.columbia.edu/data/set/povmap-global-subnational-prevalence-child-malnutrition/data-download

I need to create an account! It's not worth it since I already have the data in the format I need from a good source, though for fun, this is how far I get inside NASA's strange data collaboration with Columbia University: 

http://sedac.ciesin.columbia.edu/data/set/povmap-poverty-food-security-case-studies/data-download
Only 7 countries, so not useful. 

There is still competition to set standards for open data hosting, and these standards could arguably become much more important as developers at Facebook, Twitter, Alphabet/Google (Alphaboogle?) require high quality, cleanly formatted datasets to process the swelling tides of general Internet mischief, including harassment and the return of the grand American tradition of Yellow Journalism, which relies more on mood than on fact. 

My favorite stop on the tours of the Google Campus that I scripted and acted several hundred times were the large screen TVs would display Hans and Ola Roslings Trendalyzer. 

<iframe src="http://www.gapminder.org/tools/?embedded=true#_state_time_value=2006&delay=720.0;&entities_select@_geo=bgd&trailStartTime:null;&_geo=bra&trailStartTime:null;&_geo=khm&trailStartTime:null;&_geo=cod&trailStartTime:null;&_geo=egy&trailStartTime:null;&_geo=guy&trailStartTime:null;&_geo=idn&trailStartTime:null;&_geo=lbr&trailStartTime:null;&_geo=lby&trailStartTime:null;&_geo=mrt&trailStartTime:null;&_geo=nam&trailStartTime:null;&_geo=pse&trailStartTime:null;&_geo=phl&trailStartTime:null;&_geo=lka&trailStartTime:null;&_geo=swz&trailStartTime:null;&_geo=zmb&trailStartTime:null;;&opacitySelectDim=0.74;&marker_axis_slash__x_which=underweight_slash__children&domainMin:0.5&domainMax:64.3&zoomedMin:0.5&zoomedMax:64.3&scaleType=linear;&axis_slash__y_which=income_slash__per_slash__person_slash__gdppercapita_slash__ppp_slash__inflation_slash__adjusted&domainMin:142&domainMax:182668&zoomedMin:142&zoomedMax:182668&scaleType=log;&size_which=malnutrition_slash__weight_slash__for_slash__age_slash__percent_slash__of_slash__children_slash__under_slash__5&domainMin:0&domainMax:26.8&zoomedMin:0&zoomedMax:26.8;&color_which=country;;;&ui_chart_trails:false;;&chart-type=bubbles" width=600px height=600x ></iframe>

![](http://i.imgur.com/MFeFX8p.gif)

##Data Doubts
September 23, 2015. 
https://www.gapminder.org/news/data-sources-dont-panic-end-poverty/

Data was loaded, cleaned and reformatted using Pandas and Ggplot2 [here](https://github.com/Apeder/Global_Stunting_Visualization/tree/master/Data/Raw_Data_Cleaning)

Why add yet another visualization of childhood malnutrition to the pile? None of the visualizations looked at the trends over time, and I found it difficult to get a sense of how countries and regions compared to one another over time. Another interesting observation is seeing these vital humanitarian measures come "online," as more countries began reporting data. 

The animated timeseries choropleth is live here: 

https://apeder.github.io/Global_Stunting_Visualization/

Primarily, we can see that although stunting has become somewhat less prevalent over time, it remains widespread around the world.  As well, we can also see clearly that data collection has not been regular for many countries, so global trends are more difficult to describe. 

GGplotly version of distribution over time.  We blunted the bulge, though progress is flattening, and new data on sugar's link to chronic obesity and diabetes is concerning.   

Design
----

Why stunting? Stunting is irrevocable damage malnutrition inflicts on children, and once stunted, children will likely never fully recover.  In human terms, the problem still extends to hundreds of millions of people around the world, though some fervent optimists have still find cause to celebrate the "golden age" the world is entering. 

As previous visualizations don't include a time dimension, nor allow global comparisons, the primary design criteria was to show how the rate of stunting has changed globally over time. 

Feedback
-----

## Reviewer 1
* Missing larger context. Situate the reader in what you're trying to do overall before jumping into the nitty gritty. IE, stick "design" closer to the top, talk about where it falls short, and then what you did which makes your visualization different.
>Spent more time researching and reviewing other data sources and visualization tools and discovered some interesting potential projects.

* Visualization doesn't load on Firefox or Chrome for Linux Mint. I can hover over areas and get mouseover, but is otherwise blank. Might have to do with what I'm blocking in the browser.
>Hmm. I will have to find a way to test the Javascript on those browsers in a Linux Mint environment. 

* ## Reviwer 2
The visualization starts at 1983 but I didn’t see 1984 come up. How come?
Once I clicked play, there was no way to go back to the beginning unless I reloaded the page. Is there a way to make the visualization more interactive, so people could isolate a year, or drag a slider or something to see the changes between year?

* Once the visualization reaches the end, it auto-starts from the beginning. You could add a way to control the visualization more.
When you hover over countries on the map, there are different years listed for each company. Why? Just availability of data?

* The lists of years and percentages for each country (that show up when you hover over) don’t seem to be aligned correctly as there are indents or spaces at various places. It would be easier to read if all the years and percentages lined up. Maybe those figures could even be represented in graphs rather than numbers so it’s more apparent what the trends have been.
Maybe your summary could include a list of the countries that have the most stunting and/or the fastest growth in percentage of stunting.

## Reviewer 3
* I think the animation is a bit slow. A couple times I thought my browser had stopped. I recommend one second per year or even faster. Maybe something that could easily be screen captured and turned into a 10-30 second gif/video for social sharing. Or maybe there's a toggle to make it go faster or slower?

* If you hover over a country that doesn't yet have data (and so is blank on the map), it still shows the country's future data in a little pop-up. Could be a bit confusing since the country doesn't exist yet.
Why does it take so long for other country data to appear? It's interesting that Papua New Guinea has had data since 1983, but most countries don't have anything until a few years ago. 
Why is there no data for much of Europe?
Because new countries keep popping up every year, my eyes immediately go to the new country (or the gaps where countries should be) rather than looking at the existing countries that have changing rates. I wonder if there's a way to highlight when a country's percentage of stunted children goes up or down, so you get a better sense of the trend line for specific countries.

## Reviewer 4 
* have a strong bounding box for the map vs. the play/stop button vs. the title . Currently they kind of bleed into one another. 
* at least on my laptop the right of the map is cut off mby default. Having it somehow not use more than 95% of the width of the screen would probably help.
* I know I said otherwise earlier but seems like having the "no data" == "0% stunting" is confusing. Maybe no data can be represented by a gray?
* Maybe in v5 it would be nice to have a timeline so that jumping to specific years is possible .

Resources
------
Used Rich Donohue's code as a template 

* http://bl.ocks.org/rgdonohue/9280446

Creating Geo/TopoJson files 

* http://www.tnoda.com/blog/2013-12-07

Tooltips

* http://bl.ocks.org/lhoworko/7753a11efc189a936371

Legend 

* http://d3-legend.susielu.com/

Map pan and zoom
* https://bl.ocks.org/mbostock/8fadc5ac9c2a9e7c5ba2
* http://stackoverflow.com/questions/38459765/d3-zoom-and-pan-upgrade-to-version-4

Slider control
https://bl.ocks.org/mbostock/6452972
http://bl.ocks.org/d3noob/10632804
