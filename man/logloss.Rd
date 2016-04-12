\name{logloss}
\alias{logloss}

\title{
log-loss function for multiclass prediction
}
\description{
Cross entropy or logloss is computed.
}
\usage{
logloss(y, yp)
}

\arguments{
  \item{y}{
vector of test cases
}
  \item{yp}{
corresonding vector of predictions
}
}

\value{
the log-loss
}

\references{
Log loss is used in Kaggle competitions.
}
\author{
A. I. McLeod
}

\seealso{
\code{\link{misclassificationrate}}
}

\examples{
#logloss for perfect fit
t <- ifelse(runif(50)<0.5, "a", "b")
logloss(y=t, yp=t)
}
