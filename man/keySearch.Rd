\name{keySearch}
\alias{keySearch}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Search O*NET by keyword.
}
\description{
This function allows you to search O*NET occupations using a keyword, and receive the results in a data frame.
}
\usage{
keySearch(keyword)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{keyword}{
an occupational keyword you'd like to query the API with
}
}
\value{
A data frame containing the search results.
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
      keySearch("psychologist")
    }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~keyword }
\keyword{ ~search }
