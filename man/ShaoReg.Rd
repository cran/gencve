\name{ShaoReg}
\alias{ShaoReg}
\title{Synthetic Regression Data}
\description{
Simulated multiple linear regression data from a model used in simulation experiments
reported in Shao's famous paper on cross-validation for model selection.
}
\usage{
ShaoReg(n = 20, beta = c(3, 1.5, 0, 0, 2, 0, 0, 0), rho = 0.5, sig = 1)
}
\arguments{
  \item{n}{sample size, length of output}
  \item{beta}{regression coefficients}
  \item{rho}{cross-covariance, must be less than in magnitude 1}
  \item{sig}{residual standard deviation}
}

\details{
In general the regression equation used for simulation is:
\deqn{ y = X \beta + \epsilon}
where
\eqn{\beta} is a vector of the regression coefficients of length p,
X is the design matrix with n rows and p columns and
\eqn{\epsilon} is a vector of n independent normal random variables
with mean zero and standard deviation sig.
The rows of X are p-variate normal with mean vector zero and p-by-p covariance
matrix (i,j)-entry \eqn{rho^|i-j|}.

Shao (1993) used the default settings in the arguments and n = 20, 60, 100
in simulation experiments with delete-d cross-validation.
}

\value{Data frame with n rows and p+1 columns.
The first p columns are labelled x1, ..., xp and the last column is y.
}


\references{
Jun Shao (1993), Linear Model Selection by Cross-validation, Journal of the
American Statistical Association, 88/422.
}

\author{
A. I. McLeod
}


\examples{
ShaoReg()
}

\keyword{ models }
\keyword{ regression }
\keyword{ datagen }

