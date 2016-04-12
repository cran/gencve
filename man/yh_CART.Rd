\name{yh_CART}
\alias{yh_CART}

\title{
CART Prediction
}
\description{
Given training data and test examples, the CART predictions for the test data are produced and
the misclassification rate is returned.
}
\usage{
yh_CART(dfTr, dfTe)
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

\seealso{
\code{\link{yh_C50}},
\code{\link{yh_RF}},
\code{\link{yh_svm}},
\code{\link{yh_NB}},
\code{\link{yh_kNN}},
\code{\link{yh_lda}},
\code{\link{yh_logistic}},
\code{\link{yh_qda}}
}

\examples{
yh_CART(SinghTrain, SinghTest)#0.32
}

\keyword{ models }
\keyword{ classif }



