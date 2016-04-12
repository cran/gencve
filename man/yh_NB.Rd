\name{yh_NB}
\alias{yh_NB}

\title{
Naive Bayes Prediction
}
\description{
Given training data and test examples, the NB predictions for the test data are produced and
the misclassification rate is returned.
}
\usage{
yh_NB(dfTr, dfTe)
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
yh_NB(SinghTrain, SinghTest)#0
}

\keyword{ models }
\keyword{ classif }



