\name{rmix}
\alias{rmix}

\title{
Random Mixture Classification Example
}
\description{
Generates a random mixture for binary class prediction with output variable
green and red factors and with two inputs x1 and x2.
Similar to the mixture dataset in ESL.
}
\usage{
rmix(n = 100)
}

\arguments{
  \item{n}{
Sample size, should be even number, n/2 green and n/2 red.
}
}
\details{
The optimal Bayes error rate is 20.76%. See vignette for details.
}
\value{
dataframe with columns x1, x2, y
}
\references{
ESL. Hastie, Tibshirani and Friedman (2009). The Elements of Statistical Learning.
2nd Ed. Springer.
}

\author{
A. I. McLeod
}

\seealso{
\code{\link{rxor}},
\code{\link{rdigitsBFOS}},
\code{\link{ShaoReg}}
}

\examples{
mdf <- rmix(200)
gr <- mdf[mdf$y=="green",]
rd <- mdf[mdf$y=="red",]
with(mdf, {plot(x1, x2, type="n")
  points(gr, col="green")
  points(rd, col="red")
  })
}

\keyword{ models }
\keyword{ classif }
\keyword{ datagen }

