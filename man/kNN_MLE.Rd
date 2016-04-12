\name{kNN_MLE}
\alias{kNN_MLE}

\title{MLE k in kNN}
\description{
Uses the profile pseudolikelihood to obtain the estimate for k, the number of
nearest neighbors parameter in kNN.
}

\usage{kNN_MLE(X, Y, kmax = ceiling(length(Y) * 0.5), plot = TRUE)}

\arguments{
  \item{X}{An n-by-p matrix of covariates}
  \item{Y}{Outputs with Q classes}
  \item{kmax}{The maximum size of k}
  \item{plot}{if TRUE, plot the profile deviance otherwise no plot}
}

\details{
When Q=2, the glm algorithm is used to compute the profile
pseudologlikelihood and for Q>2, the function \code{multinom}
in \pkg{nnet} is used.
}

\value{
The estimate of k obtained by maximizing the pseudolikelihood
is returned. It can take any value from k=0 to k=kmax.

The result is returned invisibly if plot is TRUE.
}

\references{
Holmes, C. C. and Adams, N. M. (2003).
Likelihood inference in nearest-neighbour classification models,
Biometrika, 90(1), 99-112.
\url{http://biomet.oxfordjournals.org/cgi/content/abstract/90/1/99}
}

\author{
A. I. McLeod
Maintainer: <aimcleod@uwo.ca>
}


\seealso{
\code{\link[nnet]{multinom}}
}


\examples{

#Two classes example
X <- MASS::synth.tr[,1:2]
Y <- MASS::synth.tr[,3]
kNN_MLE(X=X, Y=Y, plot=FALSE)

\dontrun{
#Three classes example
library("MASS") #need lda
Y<- iris[,5]
X<- iris[,1:4]
kopt <- kNN_MLE(X, Y)
kopt
#Mis-classification rates on training data.
#Of course FLDA does better in this case.
y <- factor(Y)
ans <- class::knn(train=X, test=X, k=kopt, cl=y)
etaKNN <- sum(ans!=y)/length(y)
iris.ldf <- MASS::lda(X, y)
yfitFLDA <- MASS::predict.lda(iris.ldf, newdata=X, dimen=1)$class
etaFLDA <- sum(yfitFLDA!=y)/length(y)
eta<-c(etaFLDA, etaKNN)
names(eta)<-c("FLDA", "kNN")
eta
}
}

\keyword{ classif }

