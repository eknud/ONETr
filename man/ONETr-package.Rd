\name{onetr}
\alias{onetr}
\docType{package}
\title{
  Efficient authenticated interaction with the O*NET API.
}
\description{
  This package provides a series of functions designed to enable users to easily search and interact with occupational data from the O*NET API <www.onetonline.org>. The package produces parsed and listed XML data for custom interactions, or pre-packaged functions for easy extraction of specific data (e.g., Knowledge, Skills, Abilities, Work Styles, etc.).
}
\details{
  This package should be used to explore or extract specific occupational data from the O*NET API. The \code{setCreds} function should be called with the proper arguments prior to the use of any other package functions- the function stores one's API credentials for use by the other functions throughout the session. \code{keySearch} allows a search by keyword (e.g., "psychologist") and prints the search results, from which occupational SOC codes can be extracted. SOC codes can then be used with \code{socSearch} to print or store data about a specific occupation. For a list of functions designed for extract of specific data points (e.g., Knowledge, Skills, Abilities, etc.), please read the documentation and explore the package.
}
\author{
Eric Knudsen

Maintainer: Eric Knudsen <eknudsen@gc.cuny.edu>
}
\references{
\url{http://www.onetonline.org/}
}
% Optionally other standard keywords, one per line,
% from the file KEYWORDS in the R documentation.
\keyword{ package }
\keyword{ jobs }
\keyword{ occupations }
\examples{
  \dontrun{
      setCreds(username,password) # must have O*NET API developer account
      keySearch("psychologist")
      socSearch("19-3031.02")
  }
}
