ONETr
=====

ONETr is a package for R that facilitates interaction with the <a href="www.onetonline.org" target="_blank">O*NET</a> API.  The functions can perform searches of the occupational data based on keywords or O*NET-SOC codes, and parse the XML output into a <code>list</code> object. Then, individual functions can extract specific data as desired (see documentation for more information).

Using ONETr
-----------
1. User must be registered for an account with <a href="http://services.onetcenter.org/" target="_blank">O*NET Web Services</a> and have login credentials (specifically, a username and password) for the API.
2. If not installed already, install dependencies (<code>RCurl</code> and <code>XML</code>) and <code>devtools</code> package when planning to install ONETr directly from GitHub: <code>install.packages("RCurl","XML","devtools")</code>.
3. Call <code>library(devtools)</code> to prepare for GitHub installation.
4. Use <code>install_github("ONETr",username="eknud")</code> to install the ONETr package.
5. Start ONETr: <code>library(ONETr)</code>
6. Set API credentials provided by O*NET Web Services: <code>setCreds("username","password")
7. All package functions should now be equipped to run. Read documentation for detailed description of each function.
