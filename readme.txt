Visualization of Delays
=======================

This repository collects code that was begun at ODD 2017 Zürich and has undergone subsequent elaboration and developemnt

It is connected to:

* [Issue #11 Visualisation of vehicle delays](https://github.com/OpenDataDayZurich2016/ideas/issues/11) and
* [Issue #2 Visualization (map) of delay-causing streets](https://github.com/OpenDataDayZurich2016/ideas/issues/2)

20.03.2017  adjusted\_delays\_further.Rmd provides code to go through 52 weeks of data and extract the stops that are relevant for each line.  It also creates a bunch of empty .csv files for filling with delay data.
            text version of readme now provided to ease updating by other contributers

23.03.2017 The notebood file adjusted\_stop\_delays.Rmd tallies the number of delays greater than each of a series of six threshold values in minutes.  It puts these values in a data set specific to a single bus or tram line.  One can specify the values of the thresholds and the number of weeks of delay data for which one wants to extract the number of delays. It requires that a file exists for each line, as created by adjusted\_delays\_further.Rmd

06.04.2017  The file map.nb.html contains a notebook with code to make html widgets for lines that are represented in datasets that were created by the file adjusted_stop_delays.nb.html

07.04.2017  Upload of html files, zipped html map widgets, map.Rmd source file.

Files with .np.html can be imported into RStudio for further work

The raw delay data are available [here](https://data.stadt-zuerich.ch/dataset?sort=score+desc%2C+metadata_modified+desc&tags=vbz)

#### ==============================================================

adjusted\_delays\_func.nb.html executes an initial analysis to compare the frequency of delays at stops and along segments between stops.

adjusted\_delays\_further.nb.html executes additional code to construct .csv files for each route. 

adjusted\_stop\_delays.nb.html tallies the number of delays during 52 weeks of data, for thresholds of 1.5, 2, 3, 4, 5, and 6 minutes or more.  It also extracts all stops from the available data files from three years, and joins coordinate data for each stop appropriately.

map.nb.html reads the files constructed by the previous script and creates Leaflet html map widgets for several selected tram and bus lines.

html\_map\_widgets\_and\_report.zip has obvious contents



