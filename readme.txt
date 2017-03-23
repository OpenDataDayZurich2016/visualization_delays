Visualization of Delays
=======================

This repository collects code that was begun at ODD 2017 Zürich and has undergone subsequent elaboration and developemnt

It is connected to:

* [Issue #11 Visualisation of vehicle delays](https://github.com/OpenDataDayZurich2016/ideas/issues/11) and
* [Issue #2 Visualization (map) of delay-causing streets](https://github.com/OpenDataDayZurich2016/ideas/issues/2)

20.03.2017  adjusted\_delays\_further.Rmd provides code to go through 52 weeks of data and extract the stops that are relevant for each line.  It also creates a bunch of empty .csv files for filling with delay data.
            text version of readme now provided to ease updating by other contributers

23.03.2017 The notebood file adjusted\_stop\_delays.Rmd tallies the number of delays greater than each of a series of six threshold values in minutes.  It puts these values in a data set specific to a single bus or tram line.  One can specify the values of the thresholds and the number of weeks of delay data for which one wants to extract the number of delays. It requires that a file exists for each line, as created by adjusted\_delays\_further.Rmd
