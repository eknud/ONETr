ONETr
=====

ONETr is a package for R that facilitates interaction with the <a href="http://www.onetonline.org/" target="_blank">O\*NET™</a> API.  The functions can perform searches of the occupational data based on keywords or O\*NET™-SOC codes, and parse the XML output into a <code>list</code> object. Then, individual functions can extract specific data as desired (see ONETr manual for more information).

This software is released under the GPL-3 license.

Using ONETr
-----------
<b>Note</b>: User must be registered for an account with <a href="http://services.onetcenter.org/" target="_blank">O*NET™ Web Services</a> and have login credentials (specifically, a username and password) for the API.

<b>Install from CRAN</b>: <code>install.packages("ONETr")</code>

or

<b>Install from GitHub</b>:
<ol>
<li>If not installed already, install dependencies (<code>RCurl</code>, <code>XML</code>, and <code>plyr</code>) and <code>devtools</code> package: <code>install.packages("RCurl","XML”,”plyr”,”devtools")</code>.</li>
<li>Call <code>library(devtools)</code> to prepare for GitHub installation.</li>
<li>Use <code>install_github("eknud/ONETr")</code> to install the ONETr package.</li>
</ol>

<b>To use the package</b>:
<ol>
<li>Initiate ONETr: <code>library(ONETr)</code></li>
<li>Set API credentials provided by O*NET™ Web Services: <code>setCreds("username","password")</code></li>
<li>Use <code>keySearch</code> and <code>socSearch</code> to search for and store occupational data.</li>
<li>Once job data is stored (using <code>socSearch</code>), all package functions should now be equipped to run. Read ONETr manual for detailed description of each function.</li>
</ol>
