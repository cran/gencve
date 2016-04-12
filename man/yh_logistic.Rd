\name{yh_logistic}
\alias{yh_logistic}

\title{
Logistic Regression and Regularized Logistic Regression Prediction
}
\description{
The training data is fit and then the mis-classifcation rate for the test data is computed.
}

\usage{
yh_logistic(dfTr, dfTe, alpha = NULL)
}

\arguments{
  \item{dfTr}{
Training data frame, last column factor response and other columns are numeric inputs.
}
  \item{dfTe}{
Test data frame, columns same variables as in training data frame
}
  \item{alpha}{
alpha=1 for LASSO, alpha=0.5 for half-mixture, alpha=0 for ridge regression
}
}
\details{
alpha=0.02 often is numerically better behaved than alpha=0
}

\value{
vector with named values misclassificationRate, logloss, pcorr
}

\author{
A. I. McLeod
}

\examples{
z <- kyphosis[,c(2:4,1)]
set.seed(37771)
i <- sample(1:81, size=7, replace=TRUE)
dfTe <- z[i,]
i <- setdiff(1:81, i)
dfTr <- z[i,]
yh_logistic(dfTr, dfTe)
yh_logistic(dfTr, dfTe, alpha=1)
\dontrun{#cross-validation, takes a few minutes
X <- kyphosis[,3:4]
y <- kyphosis[,4]
cgcv(X, y, yh=yh_logistic, NCores=8)
cgcv(X, y, yh=yh_logistic, NCores=8, alpha=1)
cgcv(X, y, yh=yh_logistic, NCores=8, alpha=0.5)
cgcv(X, y, yh=yh_logistic, NCores=8, alpha=0.02)
#
}
}

\keyword{ models }
\keyword{ classif }


