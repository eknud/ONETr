\name{socSearch}
\alias{socSearch}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Searches and pulls occupational data based on SOC code.
}
\description{
This function should be used to extract and store data on a specific job for further analysis/manipulation by package functions.
}
\usage{
socSearch(soc)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{soc}{
occupation SOC code (if necessary, use \code{keySearch} to find SOC code)
  }
}
\value{
A list (parsed from XML) of all existing O*NET data on queried occupation.
}
\author{
Eric Knudsen
}
\note{
May not work if data are not properly formatted.
}

\examples{
  \dontrun{
      # You need to set your credentials with setCreds() prior to use.
      socSearch("19-3031.02")
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~soccode }
\keyword{ ~search }% __ONLY ONE__ keyword per line
