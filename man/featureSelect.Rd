\name{featureSelect}
\alias{featureSelect}

\title{
Feature Select For Wide Data
}
\description{
A commonly used method with microarrays to select the best genes for class prediction
is implemented. This method involves computing the one-way anova for each gene and
select the genes with the between classes sum of squares or equivalently the
largest F-ratios.
}

\usage{
featureSelect(X, y, numFeatures = 10)
}

\arguments{
  \item{X}{
data matrix
}
  \item{y}{
must be a factor with length equal to the number of rows of X
}
  \item{numFeatures}{
the number of features to be selected - usually larger than the default 10.
}
}
\value{
the column indicies corresponding to the columns of X that are selected
}
\references{
tba
}
\author{
A. I. McLeod
}

\examples{
Xy <- churnTrain
y <- Xy[, ncol(Xy)]
Xy <- Xy[, -ncol(Xy)]
X <- as.matrix.data.frame(Xy[,-(1:5)])
(ind <- featureSelect(X, y, numFeatures=5))
colnames(X)[ind]
}

\keyword{ models }
\keyword{ regression }
\keyword{ classif }

