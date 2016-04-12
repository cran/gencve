\name{mae}
\alias{mae}

\title{
Mean Absolute Error
}
\description{
This is a widely used criterion since the time of Laplace.
Just as least-squares is optimal for mean-square error loss functions,
least absolute deviation is optimal for mean absolute error
loss functions.
See Wikipedia article
\url{https://en.wikipedia.org/wiki/Mean_absolute_error}.
}
\usage{
mae(yTest, yHat)
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
\code{\link{mape}},
\code{\link{smape}}
}
\examples{
mape(abs(rnorm(10)), rep(sqrt(2/pi),10))
}
\keyword{ models }
\keyword{ regression }
