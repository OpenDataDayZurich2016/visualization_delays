<h1>Visualization of Delays</h1>

<p>This repository collects code that was begun at ODD 2017 Zürich and has undergone subsequent elaboration and developement.</p>

<p>It is connected to:</p>

<ul>
<li><a href="https://github.com/OpenDataDayZurich2016/ideas/issues/11">Issue #11 Visualisation of vehicle delays</a> and</li>
<li><a href="https://github.com/OpenDataDayZurich2016/ideas/issues/2">Issue #2 Visualization (map) of delay-causing streets</a></li>
</ul>

<h3>There are two ways that delays can accumulate during the course of a vehicle’s trip on a route.  A delay can occur between stops, or a delay can occur at a stop.  We plotted the frequency of cases where the scheduled time between stops and the scheduled time at stops was exceeded by more than 1.5 minutes.  We found that the vast majority of cases where schedules were exceeded was at the stops themselves.  We then created scripts and functions to visualise the stops in regard to the number of delays greater than an arbitrary threshold, over the course of 52 weeks. These were output as Leaflet javascript map widgets.</h3>

<p>The widgets can not be displayed directly from the repository because of processing of html files by GitHub.  However, there is a .zip archive that can be downloaded, along with the RStudio .nb.html files.</p>

<p>The map widgets have mouse-over labels that indicate the name of the tram or bus stop and the number of delays that occurred over 52 weeks.  Currently, data for only one direction are shown, and with a threshold of 1.5 minutes.</p>

<h3>Line 2</h3>

<p>(https://github.com/OpenDataDayZurich2016/visualization_delays/maps_png/line_2.png)</p>

<p>20.03.2017  adjusted_delays_further.Rmd provides code to go through 52 weeks of data and extract the stops that are relevant for each line.  It also creates a bunch of empty .csv files for filling with delay data.
            text version of readme now provided to ease updating by other contributers</p>

<p>23.03.2017 The notebood file adjusted_stop_delays.Rmd tallies the number of delays greater than each of a series of six threshold values in minutes.  It puts these values in a data set specific to a single bus or tram line.  One can specify the values of the thresholds and the number of weeks of delay data for which one wants to extract the number of delays. It requires that a file exists for each line, as created by adjusted_delays_further.Rmd</p>

<p>06.04.2017  The file map.nb.html contains a notebook with code to make html widgets for lines that are represented in datasets that were created by the file adjusted<em>stop</em>delays.nb.html</p>

<p>07.04.2017  Upload of html files, zipped html map widgets, map.Rmd source file.</p>

<p>Files with .np.html can be imported into RStudio for further work</p>

<p>The raw delay data are available <a href="https://data.stadt-zuerich.ch/dataset?sort=score+desc%2C+metadata_modified+desc&amp;tags=vbz">here</a></p>

<h4>==============================================================</h4>

<p>adjusted_delays_func.nb.html executes an initial analysis to compare the frequency of delays at stops and along segments between stops.</p>

<p>adjusted_delays_further.nb.html executes additional code to construct .csv files for each route. </p>

<p>adjusted_stop_delays.nb.html tallies the number of delays during 52 weeks of data, for thresholds of 1.5, 2, 3, 4, 5, and 6 minutes or more.  It also extracts all stops from the available data files from three years, and joins coordinate data for each stop appropriately.</p>

<p>map.nb.html reads the files constructed by the previous script and creates Leaflet html map widgets for several selected tram and bus lines.</p>

<p>html_map_widgets_and_report.zip has obvious contents</p>
