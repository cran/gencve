\name{yh_lda}
\alias{yh_lda}

\title{
LDA predictions
}
\description{
Given training data and test examples, the LDA predictions for the test data are produced.
}
\usage{
yh_lda(dfTr, dfTe)
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
library("MASS")
data(SinghTest) #is 0
yh_lda(SinghTrain[,c(1:10, 101)], SinghTest[,c(1:10, 101)])
}

\keyword{ models }
\keyword{ classif }


