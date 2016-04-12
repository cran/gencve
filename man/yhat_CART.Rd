\name{yhat_CART}
\alias{yhat_CART}

\title{
CART regression prediction
}
\description{
Regression prediction using tree method.
}

\usage{
yhat_CART(dfTrain, dfTest)
}

\arguments{
  \item{dfTrain}{Data frame for training data. Last column must be the output 
  		variable.}
  \item{dfTest}{Data frame for test data. Last column must be the output 
  		variable.}
}
\value{The predictions for the test sample}

\author{A. I. McLeod}

\examples{
Xy <- prostate
X <- prostate[,-9]
y <- prostate[,9]
n <- length(y)
d <- 10
set.seed(777513)
iTe <- sample(n, size=d)
iTr <- (1:n)[!match(1:n, iTe, nomatch = 0) > 0]
trdf <- data.frame(X[iTr,], y=y[iTr]) #X, y already defined
tedf <- data.frame(X[iTe,], y=y[iTe])
yhat_CART(trdf, tedf)
}

\keyword{ models }
\keyword{ regression }


