\name{yh_RF}
\alias{yh_RF}

\title{
Random Forest Prediction
}
\description{
Given training data and test examples, the RF predictions for the test data are produced and
the misclassification rate is returned.
}
\usage{
yh_RF(dfTr, dfTe)
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
yh_RF(SinghTrain, SinghTest)#0
}

\keyword{ models }
\keyword{ classif }



