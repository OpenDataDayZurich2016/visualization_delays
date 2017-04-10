Visualization of Delays in Verkehrsbetriebe Zürich (VBZ) Data
=============================================================

This repository collects code that was begun at ODD 2017 Zürich and has undergone subsequent elaboration and developement.

It is connected to:

* [Issue #11 Visualisation of vehicle delays](https://github.com/OpenDataDayZurich2016/ideas/issues/11) and
* [Issue #2 Visualization (map) of delay-causing streets](https://github.com/OpenDataDayZurich2016/ideas/issues/2)

### There are two ways that delays can accumulate during the course of a vehicle’s trip on a route.  A delay can occur between stops, or a delay can occur at a stop.  We plotted the frequency of cases where the scheduled time between stops and the scheduled time at stops was exceeded by more than 1.5 minutes.  We found that the vast majority of cases where schedules were exceeded was at the stops themselves.

[Delays at stops and along segments](https://github.com/OpenDataDayZurich2016/visualization_delays/delays_routes_stops.png)   

### We then created scripts and functions to visualise the stops and associated delays with respect to the number of delays greater than an arbitrary threshold, over the course of 52 weeks, the week of 20.09.2015 to 11.09.2016. These were output as Leaflet javascript map widgets.

The map widgets have mouse-over labels that indicate the name of the tram or bus stop and the number of delays that occurred over the 52 weeks.  Currently, data for only one direction are shown, and with a threshold of 1.5 minutes.

[The report](https://rawgit.com/OpenDataDayZurich2016/visualization_delays/master/html_map_widgets_and_report/map.html)


## Interactive Maps of Delay Counts at Stops for Selected Lines

[Line 2](https://rawgit.com/OpenDataDayZurich2016/visualization_delays/master/html_map_widgets_and_report/line_2.html)

[Line 7](https://rawgit.com/OpenDataDayZurich2016/visualization_delays/master/html_map_widgets_and_report/line_7.html)

[Line 10](https://rawgit.com/OpenDataDayZurich2016/visualization_delays/master/html_map_widgets_and_report/line_10.html)

[Line 14](https://rawgit.com/OpenDataDayZurich2016/visualization_delays/master/html_map_widgets_and_report/line_14.html)

[Line 33](https://rawgit.com/OpenDataDayZurich2016/visualization_delays/master/html_map_widgets_and_report/line_33.html)

[Line 72](https://rawgit.com/OpenDataDayZurich2016/visualization_delays/master/html_map_widgets_and_report/line_72.html)

### Additional lines or delays in the opposite direction could easily be visualised with simple code modification.

#### ===============================================================

### Modifications

20.03.2017  adjusted\_delays\_further.Rmd provides code to go through 52 weeks of data and extract the stops that are relevant for each line.  It also creates a bunch of empty .csv files for filling with delay data.
            text version of readme now provided to ease updating by other contributors

23.03.2017 The notebook file adjusted\_stop\_delays.Rmd tallies the number of delays greater than each of a series of six threshold values in minutes.  It puts these values in a data set specific to a single bus or tram line.  One can specify the values of the thresholds and the number of weeks of delay data for which one wants to extract the number of delays. It requires that a file exists for each line, as created by adjusted\_delays\_further.Rmd

06.04.2017  The file map.nb.html contains a notebook with code to make html widgets for lines that are represented in datasets that were created by the file adjusted_stop_delays.nb.html

07.04.2017  Upload of html files, zipped html map widgets, map.Rmd source file.

09.04.2017  Upload of widgets, README.md

Files with .np.html can be imported into RStudio for further work

The raw delay data are available [here](https://data.stadt-zuerich.ch/dataset?sort=score+desc%2C+metadata_modified+desc&tags=vbz)

#### ==============================================================

### Code guide

adjusted\_delays\_func.nb.html executes an initial analysis to compare the frequency of delays at stops and along segments between stops.

adjusted\_delays\_further.nb.html executes additional code to construct .csv files for each route. 

adjusted\_stop\_delays.nb.html tallies the number of delays during 52 weeks of data, for thresholds of 1.5, 2, 3, 4, 5, and 6 minutes or more.  It also extracts all stops from the available data files from three years, and joins coordinate data for each stop appropriately.

map.nb.html reads the files constructed by the previous script and creates Leaflet html map widgets for several selected tram and bus lines.

html\_map\_widgets\_and\_report.zip has obvious contents



