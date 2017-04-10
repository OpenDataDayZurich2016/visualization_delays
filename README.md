<h1>Visualization of Delays in Verkehrsbetriebe Zürich (VBZ) Data</h1>

<p>This repository collects code that was begun at ODD 2017 Zürich and has undergone subsequent elaboration and developement.</p>

<p>It is connected to:</p>

<ul>
<li><a href="https://github.com/OpenDataDayZurich2016/ideas/issues/11">Issue #11 Visualisation of vehicle delays</a> and</li>
<li><a href="https://github.com/OpenDataDayZurich2016/ideas/issues/2">Issue #2 Visualization (map) of delay-causing streets</a></li>
</ul>

<h3>There are two ways that delays can accumulate during the course of a vehicle’s trip on a route.  A delay can occur between stops, or a delay can occur at a stop.  We plotted the frequency of cases where the scheduled time between stops and the scheduled time at stops was exceeded by more than 1.5 minutes.  We found that the vast majority of cases where schedules were exceeded was at the stops themselves.</h3>

<h3>We then created scripts and functions to visualise the stops and associated delays with respect to the number of delays greater than an arbitrary threshold, over the course of 52 weeks. These were output as Leaflet javascript map widgets.</h3>

<p>The map widgets have mouse-over labels that indicate the name of the tram or bus stop and the number of delays that occurred over 52 weeks.  Currently, data for only one direction are shown, and with a threshold of 1.5 minutes.</p>

<p><a href="https://rawgit.com/OpenDataDayZurich2016/visualization_delays/master/html_map_widgets_and_report/map.html">The report</a></p>

<h2>Interactive Maps of Delay Counts at Stops for Selected Lines</h2>

<p><a href="https://rawgit.com/OpenDataDayZurich2016/visualization_delays/master/html_map_widgets_and_report/line_2.html">Line 2</a></p>

<p><a href="https://rawgit.com/OpenDataDayZurich2016/visualization_delays/master/html_map_widgets_and_report/line_7.html">Line 7</a></p>

<p><a href="https://rawgit.com/OpenDataDayZurich2016/visualization_delays/master/html_map_widgets_and_report/line_10.html">Line 10</a></p>

<p><a href="https://rawgit.com/OpenDataDayZurich2016/visualization_delays/master/html_map_widgets_and_report/line_14.html">Line 14</a></p>

<p><a href="https://rawgit.com/OpenDataDayZurich2016/visualization_delays/master/html_map_widgets_and_report/line_33.html">Line 33</a></p>

<p><a href="https://rawgit.com/OpenDataDayZurich2016/visualization_delays/master/html_map_widgets_and_report/line_72.html">Line 72</a></p>

<h3>Additional lines or delays in the opposite direction could easily be visualised with simple code modification.</h3>

<h4>===============================================================</h4>

<h3>Modifications</h3>

<p>20.03.2017  adjusted_delays_further.Rmd provides code to go through 52 weeks of data and extract the stops that are relevant for each line.  It also creates a bunch of empty .csv files for filling with delay data.
            text version of readme now provided to ease updating by other contributors</p>

<p>23.03.2017 The notebook file adjusted_stop_delays.Rmd tallies the number of delays greater than each of a series of six threshold values in minutes.  It puts these values in a data set specific to a single bus or tram line.  One can specify the values of the thresholds and the number of weeks of delay data for which one wants to extract the number of delays. It requires that a file exists for each line, as created by adjusted_delays_further.Rmd</p>

<p>06.04.2017  The file map.nb.html contains a notebook with code to make html widgets for lines that are represented in datasets that were created by the file adjusted<em>stop</em>delays.nb.html</p>

<p>07.04.2017  Upload of html files, zipped html map widgets, map.Rmd source file.</p>

<p>09.04.2017  Upload of widgets, README.md</p>

<p>Files with .np.html can be imported into RStudio for further work</p>

<p>The raw delay data are available <a href="https://data.stadt-zuerich.ch/dataset?sort=score+desc%2C+metadata_modified+desc&amp;tags=vbz">here</a></p>

<h4>==============================================================</h4>

<h3>Code guide</h3>

<p>adjusted_delays_func.nb.html executes an initial analysis to compare the frequency of delays at stops and along segments between stops.</p>

<p>adjusted_delays_further.nb.html executes additional code to construct .csv files for each route. </p>

<p>adjusted_stop_delays.nb.html tallies the number of delays during 52 weeks of data, for thresholds of 1.5, 2, 3, 4, 5, and 6 minutes or more.  It also extracts all stops from the available data files from three years, and joins coordinate data for each stop appropriately.</p>

<p>map.nb.html reads the files constructed by the previous script and creates Leaflet html map widgets for several selected tram and bus lines.</p>

<p>html_map_widgets_and_report.zip has obvious contents</p>
