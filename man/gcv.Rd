\name{gcv}
\alias{gcv}
\title{Estimate EPE Using Delete-d Cross-Validation}

\description{
This is a general purpose function to estimate the EPE of a specified cost
function in regression and classification problems.
For regression, the default cost function is for mean-square error
and for classification it is the misclassification rate.
Direct support for elastic penalty regression, LASSO, PCR, PLSR,
nearest neighbour and Random Forest regression are included in the package.
And for classification, built-in support functions are provided for
LDA, QDA, Naive Bayes, kNN, CART, C5.0, Random Forest and SVM.
Examples included in vignette section are provided for SCAD,
MCP and best subset regression.
Illustrative example datasets and data generation models are also
provided.
}

\usage{
gcv(X, y, MaxIter = 1000, d = ceiling(length(y)/10), NCores = 1,
  cost = mse,  yhat = yhat_lm, libs = character(0), seed = "default",
  ...)
}

\arguments{
  \item{X}{inputs, matrix or dataframe}
  \item{y}{output vector}
  \item{MaxIter}{Number of iterations of the CV procedure}
  \item{d}{Number of observations for the hold-out sample}
  \item{NCores}{Default is 1 which does not use the parallel package.
  Otherwise, you can set to the number of cores available.
  If unsure, just experiment!}
  \item{cost}{Average cost. See examples mse, mae, mape.}
  \item{yhat}{In general it must be a function with arguments
    dfTrain and dfTest. See examples below.}
  \item{libs}{Required libraries needed for the predictor.}
  \item{seed}{Default is to use R's default which is based on the current time.
  Otherwise set to an integer value. See Details.}
  \item{\dots}{Additional arguments that are passed to yhat.}
}

\details{If only serial evaluation was implemented then I would have used
\code{set.seed} to control the random. But I have included it as an argument
since it can be used to set the parallel random number generator seed. This
is sometimes useful for replicating the simulations. If the argument
\code{seed} is used, it will also set the seed when only serial computation
is done.}

\value{Matrix with one row and four columns: epe, sd_epe, snr, pcorr. These
are respectively the estimated EPE,  standard deviation of this estimate,
an estimate of the snr (signal-to-noise ratio) out-of-sample and
an out-of-sample estimate of the correlation between the prediction and
the true value.}

\note{The statistical distribution of the EPE's when the argument
\code{outAllQ} is set to TRUE is often positively skewed. This may be of
interest in applications.}

\references{ESL}

\author{A. I. McLeod}

\seealso{
\code{\link{mse}},
\code{\link{mae}},
\code{\link{mape}},
\code{\link{misclassificationrate}},
\code{\link{logloss}},
\code{\link{yhat_lm}},
\code{\link{yhat_nn}},
\code{\link{yhat_lars}},
\code{\link{yhat_plus}},
\code{\link{yhat_gel}},
\code{\link{yhat_step}},
\code{\link{yh_lda}},
\code{\link{yh_qda}},
\code{\link{yh_svm}},
\code{\link{yh_NB}},
\code{\link{yh_RF}},
\code{\link{yh_CART}},
\code{\link{yh_C50}},
\code{\link{yh_kNN}},
\code{\link{featureSelect}},
\code{\link[boot]{cv.glm}}
}

\examples{
#Simple example but in general, MaxIter >= 1000 is recommended.
Xy <- ShaoReg()
gcv(Xy[,1:8], Xy[,9], MaxIter=25, d=5)
}

\keyword{ models }
\keyword{ regression }
\keyword{ classif }


