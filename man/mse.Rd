\name{mse}
\alias{mse}

\title{Mean Square Error Loss}

\description{
This is the default.
}
\usage{
mse(yTest, yHat)
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
\code{\link{mae}},
\code{\link{mape}},
\code{\link{smape}}
}
\examples{
mse(abs(rnorm(10)), rep(sqrt(2/pi),10))
}
\keyword{ models }
\keyword{ regression }
