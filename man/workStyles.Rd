\name{workStyles}
\alias{workStyles}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Pull work style data from job list
}
\description{
This function should be used after a \code{socSearch} has been stored. The function extracts work style information for the searched/stored occupation.
}
\usage{
workStyles(list)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{list}{
the name of the list object that the \code{socSearch} data has been stored in
}
}
\value{
A data frame with relevant data.
}
\author{
Eric Knudsen
}
\note{
May not work if data are not properly formatted.
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\examples{
    data(jobData)
    # You need to set your credentials with setCreds() prior to use.
    workStyles(jobData)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~workstyles }
