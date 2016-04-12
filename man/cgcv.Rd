\name{cgcv}
\alias{cgcv}

\title{
Estimate Misclassification Rate Using d-fold Cross-Validation for Class Prediction
}
\description{
This is a general purpose function to estimate the misclassification rate
for a specified classifier.
}
\usage{
cgcv(X, y, yh = yh_NN, MaxIter = 1000, d = ceiling(length(y)/10), NCores = 1,
libs = character(0), seed = "default", ...)
}

\arguments{
  \item{X}{inputs}
  \item{y}{output factor}
  \item{yh}{function with arguments dfTrain and dfTest that produces
  the missclassification rate for test data}
  \item{MaxIter}{Number of iterations of the CV procedure}
  \item{d}{Number of observations for the hold-out sample}
  \item{NCores}{Default is 1 which does not use the parallel package.
  Otherwise, you can set to the number of cores available.
  If unsure, just experiment!}
  \item{libs}{Required libraries needed for the predictor.}
  \item{seed}{Default is to use R's default which is based on the current time.
  Otherwise set to an integer value. See Details.}
  \item{\dots}{Additional arguments that are passed to yh.}
}

\value{ cross-validated mis-classifcation rate}

\author{
A. I. McLeod
}


\examples{
Xy <- rmix(200) #training data
X <- as.matrix.data.frame(Xy[,1:2])
y <- Xy[,3]
cgcv(X, y, MaxIter=50)
}



\keyword{ models }
\keyword{ classif }



