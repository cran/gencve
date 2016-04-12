\name{kNN_LOOCV}
\alias{kNN_LOOCV}
\title{ Select k with Leave-one-out CV }
\description{
Use leave-one-out CV to select k
}
\usage{
kNN_LOOCV(X, y, kmax=ceiling(length(y)*0.5), plot=FALSE)
}
\arguments{
  \item{X}{ design matrix }
  \item{y}{ response vector }
  \item{kmax}{ maximum value of k to consider }
  \item{plot}{ show plot of mis-classification rate }
}
\details{
Leave one out CV is used for odd values of k from 1 to kmax.
}
\value{
plot produced
}

\examples{
Xy <- rmix(300) #training data
kNN_LOOCV(Xy[,1:2], Xy[,3], plot=FALSE)
}

\keyword{ classif }
