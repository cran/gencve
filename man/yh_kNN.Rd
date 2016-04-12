\name{yh_kNN}
\alias{yh_kNN}
\alias{yh_NN}


\title{kNN or NN prediction}

\description{
Given training data and test examples, the kNN predictions for the test data are produced.
The tuning parameter k is automatically selected by specifying one of the
methods: LOOCV, MLE or NN.
}
\usage{
yh_kNN(dfTr, dfTe, method = c("LOOCV", "MLE", "NN"), k=1)
}

\arguments{
  \item{dfTr}{
dataframe with last column for the output. The output must be a factor.
}

  \item{dfTe}{
dataframe for test data. Must have columns corresponding to the training columns except
the test output is not needed.
}

  \item{method}{
One of the automatic methods for selecting k, the number of nearest neighbours. The default
is LOOCV.
}

  \item{k}{
Pre-specified k but this value of k is only used when method="NN"
otherwise when method="LOOCV" or method="MLE", k is estimated.
}
}

\value{
The mis-classification rate (cost) and correlation of prediction and test.
}

\author{
A. I. McLeod
}

\seealso{
\code{\link{yh_C50}},
\code{\link{yh_CART}},
\code{\link{yh_RF}},
\code{\link{yh_svm}},
\code{\link{yh_NB}},
\code{\link{yh_lda}},
\code{\link{yh_logistic}},
\code{\link{yh_qda}}
}

\examples{
yh_kNN(SinghTrain[,c(1:10, 101)], SinghTest[,c(1:10, 101)])#0.088
yh_kNN(SinghTrain[,c(1:10, 101)], SinghTest[,c(1:10, 101)], method="NN")#0.088
}

\keyword{ models }
\keyword{ classif }

