\name{yh_svm}
\alias{yh_svm}

\title{
Support Vector Machine Prediction
}
\description{
Given training and test examples, the SVM predictions for the test data are produced.
}
\usage{
yh_svm(dfTr, dfTe)
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
yh_svm(SinghTrain, SinghTest)#0.294
}

\keyword{ models }
\keyword{ classif }

