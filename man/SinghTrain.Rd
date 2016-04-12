\name{SinghTrain}
\alias{SinghTrain}

\docType{data}
\title{Singh Prostate Microarray Training Data}

\description{
Microarray data for 52 prostate tumors and 50 nontumors
from patients undergoing surgery.
}
\usage{data("SinghTrain")}
\format{
  A data frame with 102 observations on the following 101 variables.
  \describe{
    \item{\code{gene1}}{a numeric vector}
    \item{\code{gene2}}{a numeric vector}
    \item{\code{gene3}}{a numeric vector}
    \item{\code{gene4}}{a numeric vector}
    \item{\code{gene5}}{a numeric vector}
    \item{\code{gene6}}{a numeric vector}
    \item{\code{gene7}}{a numeric vector}
    \item{\code{gene8}}{a numeric vector}
    \item{\code{gene9}}{a numeric vector}
    \item{\code{gene10}}{a numeric vector}
    \item{\code{gene11}}{a numeric vector}
    \item{\code{gene12}}{a numeric vector}
    \item{\code{gene13}}{a numeric vector}
    \item{\code{gene14}}{a numeric vector}
    \item{\code{gene15}}{a numeric vector}
    \item{\code{gene16}}{a numeric vector}
    \item{\code{gene17}}{a numeric vector}
    \item{\code{gene18}}{a numeric vector}
    \item{\code{gene19}}{a numeric vector}
    \item{\code{gene20}}{a numeric vector}
    \item{\code{gene21}}{a numeric vector}
    \item{\code{gene22}}{a numeric vector}
    \item{\code{gene23}}{a numeric vector}
    \item{\code{gene24}}{a numeric vector}
    \item{\code{gene25}}{a numeric vector}
    \item{\code{gene26}}{a numeric vector}
    \item{\code{gene27}}{a numeric vector}
    \item{\code{gene28}}{a numeric vector}
    \item{\code{gene29}}{a numeric vector}
    \item{\code{gene30}}{a numeric vector}
    \item{\code{gene31}}{a numeric vector}
    \item{\code{gene32}}{a numeric vector}
    \item{\code{gene33}}{a numeric vector}
    \item{\code{gene34}}{a numeric vector}
    \item{\code{gene35}}{a numeric vector}
    \item{\code{gene36}}{a numeric vector}
    \item{\code{gene37}}{a numeric vector}
    \item{\code{gene38}}{a numeric vector}
    \item{\code{gene39}}{a numeric vector}
    \item{\code{gene40}}{a numeric vector}
    \item{\code{gene41}}{a numeric vector}
    \item{\code{gene42}}{a numeric vector}
    \item{\code{gene43}}{a numeric vector}
    \item{\code{gene44}}{a numeric vector}
    \item{\code{gene45}}{a numeric vector}
    \item{\code{gene46}}{a numeric vector}
    \item{\code{gene47}}{a numeric vector}
    \item{\code{gene48}}{a numeric vector}
    \item{\code{gene49}}{a numeric vector}
    \item{\code{gene50}}{a numeric vector}
    \item{\code{gene51}}{a numeric vector}
    \item{\code{gene52}}{a numeric vector}
    \item{\code{gene53}}{a numeric vector}
    \item{\code{gene54}}{a numeric vector}
    \item{\code{gene55}}{a numeric vector}
    \item{\code{gene56}}{a numeric vector}
    \item{\code{gene57}}{a numeric vector}
    \item{\code{gene58}}{a numeric vector}
    \item{\code{gene59}}{a numeric vector}
    \item{\code{gene60}}{a numeric vector}
    \item{\code{gene61}}{a numeric vector}
    \item{\code{gene62}}{a numeric vector}
    \item{\code{gene63}}{a numeric vector}
    \item{\code{gene64}}{a numeric vector}
    \item{\code{gene65}}{a numeric vector}
    \item{\code{gene66}}{a numeric vector}
    \item{\code{gene67}}{a numeric vector}
    \item{\code{gene68}}{a numeric vector}
    \item{\code{gene69}}{a numeric vector}
    \item{\code{gene70}}{a numeric vector}
    \item{\code{gene71}}{a numeric vector}
    \item{\code{gene72}}{a numeric vector}
    \item{\code{gene73}}{a numeric vector}
    \item{\code{gene74}}{a numeric vector}
    \item{\code{gene75}}{a numeric vector}
    \item{\code{gene76}}{a numeric vector}
    \item{\code{gene77}}{a numeric vector}
    \item{\code{gene78}}{a numeric vector}
    \item{\code{gene79}}{a numeric vector}
    \item{\code{gene80}}{a numeric vector}
    \item{\code{gene81}}{a numeric vector}
    \item{\code{gene82}}{a numeric vector}
    \item{\code{gene83}}{a numeric vector}
    \item{\code{gene84}}{a numeric vector}
    \item{\code{gene85}}{a numeric vector}
    \item{\code{gene86}}{a numeric vector}
    \item{\code{gene87}}{a numeric vector}
    \item{\code{gene88}}{a numeric vector}
    \item{\code{gene89}}{a numeric vector}
    \item{\code{gene90}}{a numeric vector}
    \item{\code{gene91}}{a numeric vector}
    \item{\code{gene92}}{a numeric vector}
    \item{\code{gene93}}{a numeric vector}
    \item{\code{gene94}}{a numeric vector}
    \item{\code{gene95}}{a numeric vector}
    \item{\code{gene96}}{a numeric vector}
    \item{\code{gene97}}{a numeric vector}
    \item{\code{gene98}}{a numeric vector}
    \item{\code{gene99}}{a numeric vector}
    \item{\code{gene100}}{a numeric vector}
    \item{\code{health}}{a factor with levels \code{normal} \code{tumor}}
  }
}
\details{
The data have been standardized by patient. The best 100 genes out of
12600 genes in the original have been selected.
}
\source{
Nathalie Pochet, Frank De Smet, Johan A.K. Suykens and Bart L.R. De Moor (2004).
Systematic benchmarking of microarray data classification:
assessing the role of nonlinearity and dimensionality reduction.
Bioinformatics Advance Access published July 1, 2004.
}
\references{
Terry Speed
}

\seealso{
\code{\link{featureSelect}},
\code{\link{churnTrain}}
}

\examples{
yh_C50(SinghTrain, SinghTest)#0.235
dim(SinghTrain)
dim(SinghTest)
}
\keyword{datasets}
