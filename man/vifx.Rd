\name{vifx}
\alias{vifx}
\title{Variance Inflation Factor}

\description{
Variance inflation factor is computed for a given regression design matrix.
}
\usage{
vifx(X)
}

\arguments{
  \item{X}{
Design matrix, should include column of 1's if there is an intercept term.
}
}
\details{
The design matrix is assumed to be of full rank.
}
\value{
the variance inflation factors for each column
}

\author{
A. I. McLeod
}

\examples{
data(longley)
vifx(longley[,1:6])
}

\keyword{ regression }
\keyword{ models }

