\name{dShao}
\alias{dShao}
\title{Shao Holdout Sample Size for Linear Regression Variable Selection}

\description{
Implements Shao's recommendation.
}
\usage{
dShao(n)
}

\arguments{
  \item{n}{number of observations}
}

\value{
hold-out sample size for delete-d method. This is the validation data
}
\references{
 Jun Shao (1993). Model Selection by Cross-Validation.
 Journal of the American Statistical Association, Vol. 88, No. 422, pp. 486-494.
}

\note{This is only recommended in the variable selection problem in the
classical asymptotic linear regression setting where p is fixed and n is much
larger than p, where n is the number of observations and p is the number of
independent variables.}

\author{
A. I. McLeod
}

\seealso{
\code{\link{gcv}}
}
\examples{
dShao(100)
}

\keyword{ models }
\keyword{ regression }


