\name{yhat_step}
\alias{yhat_step}

\title{
Backward Stagewise Regression with AIC or BIC
}
\description{
Fits a subset regression model using backward stagewise regression to training
 data and computes the predictions for the test data.
}

\usage{
yhat_step(dfTrain, dfTest, ic = c("BIC", "AIC"))
}

\arguments{
  \item{dfTrain}{Data frame for training data. Last column must be the output 
  		variable.}
  \item{dfTest}{Data frame for test data. Last column must be the output 
  		variable.}
  \item{ic}{Information criterion to use to select the number of components.
  		Default is BIC.}
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
yhat_step(trdf, tedf)
}

\keyword{ models }
\keyword{ regression }
