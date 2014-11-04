\name{setCreds}
\alias{setCreds}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Set O*NET API credentials for functional use.
}
\description{
This function allows you to store your O*NET API HTTPS credentials for easy authentication when calling package functions. This function must be used before any other function in the package.
}
\usage{
setCreds(user, pass)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{user}{
O*NET API developer username (for the HTTPS API)
}
  \item{pass}{
O*NET API developer password (for the HTTPS API)
}
}
\value{
An list to store the API username and password for access by the package functions.
}
\author{
Eric Knudsen
}

\examples{
    # store API username and password
    setCreds("sampleuser","samplepassword")
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~credentials }
\keyword{ ~authentication }% __ONLY ONE__ keyword per line
