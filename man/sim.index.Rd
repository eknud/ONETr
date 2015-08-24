\name{sim.index}
\alias{sim.index}
%- Also NEED and '\alias' for EACH other topic documented here.
\title{
Similarity indices for job attributes
}
\description{
Computes the Sorensen-Dice and/or Jaccard indices of similarity between two jobs on the named data type (e.g., knowledge, skills, etc.).
}
\usage{
sim.index(list1, list2, FUN, index=c("sd", "ji", "all"))
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{list1}{
    list object (from \code{socSearch}) of the first job
  }
  \item{list2}{
    list object (from \code{socSearch}) of the second job
  }
  \item{FUN}{
    job data type to compare (e.g., knowledge)
  }
  \item{index}{
    the preferred index of similarity (Sorensen-Dice and/or Jaccard). Can use \code{"all"} to compute both.
  }
}
\value{
A list of the computed indices
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
    data(jobData2)
    sim.index(jobData, jobData2, knowledge, index="all")
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~sim.index }
