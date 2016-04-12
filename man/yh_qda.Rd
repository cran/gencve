\name{yh_qda}
\alias{yh_qda}

\title{
QDA Prediction
}
\description{
Given training data and test examples, the QDA predictions for the test data are produced.
}
\usage{
yh_qda(dfTr, dfTe)
}

\arguments{
  \item{dfTr}{
dataframe with last column for the output. The output must be a factor.
}
  \item{dfTe}{
dataframe for test data. Must have columns corresponding to the training columns except
the test output is not needed.
}
}

\value{
tba. Not fully implemented yet.
}

\author{
A. I. McLeod
}

\examples{
require("MASS")
yh_qda(SinghTrain[,c(1:10, 101)], SinghTest[,c(1:10, 101)])#0.0588
}

\keyword{ models }
\keyword{ classif }


