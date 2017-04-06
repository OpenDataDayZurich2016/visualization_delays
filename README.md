<h1>Visualization of Delays</h1>

<p>This repository collects code that was begun at ODD 2017 Zürich and has undergone subsequent elaboration and developemnt</p>

<p>It is connected to:</p>

<ul>
<li><a href="https://github.com/OpenDataDayZurich2016/ideas/issues/11">Issue #11 Visualisation of vehicle delays</a> and</li>
<li><a href="https://github.com/OpenDataDayZurich2016/ideas/issues/2">Issue #2 Visualization (map) of delay-causing streets</a></li>
</ul>

<p>20.03.2017  adjusted_delays_further.Rmd provides code to go through 52 weeks of data and extract the stops that are relevant for each line.  It also creates a bunch of empty .csv files for filling with delay data.
            text version of readme now provided to ease updating by other contributers</p>

<p>23.03.2017 The notebood file adjusted_stop_delays.Rmd tallies the number of delays greater than each of a series of six threshold values in minutes.  It puts these values in a data set specific to a single bus or tram line.  One can specify the values of the thresholds and the number of weeks of delay data for which one wants to extract the number of delays. It requires that a file exists for each line, as created by adjusted_delays_further.Rmd</p>

<p>06.04.2017  The file map.nb.html contains a notebook with code to make html widgets for lines that are represented in datasets that were created by the file adjusted<em>stop</em>delays.nb.html</p>

<p>The distribution of counts of delays greater than 1.5 minutes on each of several lines represented below:</p>

<p><a href="https://github.com/OpenDataDayZurich2016/visualization_delays/line_2.html">Line 2</a></p>
