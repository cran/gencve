\name{mape}
\alias{mape}

\title{
Mean Absolute Percentage Error
}
\description{
This criterion is frequently used in business forecasting.
See Wikipedia article
\url{https://en.wikipedia.org/wiki/Mean_absolute_percentage_error}.
}
\usage{
mape(yTest, yHat)
}

\arguments{
  \item{yTest}{
test data
}
  \item{yHat}{
predictions of the test data
}
}

\details{
tba
}

\value{
mean percentage absolute errors
}

\author{
A. I. McLeod
}


\seealso{
\code{\link{gcv}},
\code{\link{mse}},
\code{\link{mae}},
\code{\link{smape}}
}
\examples{
#E(Z)=sqrt(2/pi), Z~abs(N(0,1))
mape(abs(rnorm(10)), rep(sqrt(2/pi),10))
}
\keyword{ models }
\keyword{ regression }


