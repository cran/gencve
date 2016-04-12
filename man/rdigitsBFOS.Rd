\name{rdigitsBFOS}
\alias{rdigitsBFOS}

\title{
BFOS Digit Recognition Problem
}
\description{
BFOS suggested this is data generation model for testing the performance of nonlinear
classifiers such as CART. See details and vignette.
}
\usage{
rdigitsBFOS(n, eta = 0.25, alpha = NULL, silent = FALSE)
}

\arguments{
  \item{n}{
Number of 10-tuples to generated.
}
  \item{eta}{
Bayes optimal missclassification rate.
}
  \item{alpha}{
Default is Null but if specified it is theprobability line segment is flipped.
When alpha is specified corresponding the Bayes rate is determined and shown.
}

  \item{silent}{
Default is FALSE and in this case the title is displayed otherwise no display.
}

}

\details{
Breiman et al. (1984, Section 2.6.1, p.43) mentioned the case alpha=0.1 and stated that the
Bayes optimal rule has a 0.26 mis-classification rate.
Derivation of this and more details are discussed in the vignette.
}

\value{
A dataframe with 10*n rows and 8 columns is produced.
Columns 1 to 7 are labeled x1, ..., x7 and correspond to the inputs which
are the line segments comprising each digit where 1 indicates on
and 0 off. Column 8 is a factor with value the digit, 0, 1, ..., 9.
Each successive block of ten rows corresponds to ten successive digits.
}

\references{
BFOS (Breiman, Friedman, Olshen, and Stone), 1984 Classification and Regression Trees
}
\author{
A. I. McLeod
}

\note{
An attribute "title" is created.
}


\seealso{
\code{\link{rxor}},
\code{\link{rmix}},
\code{\link{ShaoReg}}
}


\examples{
#debug-rdigitsBFOS.R
#with alpha=0.1, not significantly different from 0.25
require("C50")
n <- 1000
Xy <- rdigitsBFOS(n, alpha=0.1)
attr(Xy, "title")
names(Xy)
ans <- C5.0(digit~., data=Xy)
XyTest <- rdigitsBFOS(n, alpha=0.1)
yHat <- predict(ans, newdata=XyTest[,1:7])
eta <- mean(yHat!=XyTest$digit)
MOE95pc <- 1.96*sqrt(eta*(1-eta)/(10*n))
round(100*unlist(list(misclassifcationRate=eta, "95pcMOE"=MOE95pc)),1)
}

\keyword{ models }
\keyword{ classif }
\keyword{ datagen }


