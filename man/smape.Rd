\name{smape}
\alias{smape}

\title{
Mean Absolute Percentage Error
}
\description{
This criterion is frequently used in business forecasting.
See Wikipedia article
\url{https://en.wikipedia.org/wiki/Symmetric_mean_absolute_percentage_error}.
}

\usage{
smape(yTest, yHat)
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
\code{\link{mape}} 
}
\examples{
smape(abs(rnorm(10)), rep(sqrt(2/pi),10))
}

\keyword{ models }
\keyword{ regression }

