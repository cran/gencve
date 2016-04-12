\name{yhat_gel}
\alias{yhat_gel}

\title{Elastic Net Regression Prediction}

\description{Fit regression using 10-fold CV with the 1 standard deviation rule
and compute predictions.}

\usage{
yhat_gel(dfTrain, dfTest, alpha = 1)
}

\arguments{
  \item{dfTrain}{Data frame for training data. Last column must be the output
  		variable.}
  \item{dfTest}{Data frame for test data. Last column must be the output
  		variable.}
  \item{alpha}{Must be in [0,1], alpha=1 for LASSO (default), alpha=0 for ridge
  regression. Another recommended choice is alpha=0.5.}
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
yhat_gel(trdf, tedf)
}

\keyword{ models }
\keyword{ regression }

