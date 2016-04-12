\name{rxor}
\alias{rxor}

\title{
Random XOR Samples
}
\description{
Data is generated for the XOR problem. The default settings produce a data.frame with columns
x1, x2 and y and with 4 rows and this table defines the XOR problem.
The output y is defined by the XOR operation applied to the Boolean x1 and x2.
}
\usage{
rxor(n = 1, p = 0)
}

\arguments{
  \item{n}{
sample size is 4*n
}
  \item{p}{
extra random inputs, x3, x4, ... etc. So the output data frame has
dimensions 4*n by 2+p+1 columns. The extra p columns are random Bernouilli random
variables with equi-probable outcomes.
}
}

\details{
This was a famous problem in online learning.
}
\value{
data.frame with 4*n rows and 2+p+1 columns.
The last column corresponds to the output.
}

\author{
A. I. McLeod
}

\examples{
library("C50")
Xy <- rxor(n=5, p=2)
C5.0(y ~ ., data=Xy)
}

\keyword{ models }
\keyword{ classif }
\keyword{ datagen }


