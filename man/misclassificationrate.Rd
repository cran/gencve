\name{misclassificationrate}
\alias{misclassificationrate}

\title{
Misclassification Rate for Class Prediction
}

\description{
The misclassification rate is appropriate for 0-1 loss function
for class prediction.
}

\usage{
misclassificationrate(y, yp)
}

\arguments{
  \item{y}{
vector of test cases
}
  \item{yp}{
corresonding vector of predictions
}
}

\value{
the misclassification rate
}

\author{
A. I. McLeod
}

\seealso{
\code{\link{logloss}}
}

\examples{
y <- c(3,1,1,3,3)
yh <- c(1,1,1,1,1)
misclassificationrate(y, yh)
}

\keyword{ classif }

