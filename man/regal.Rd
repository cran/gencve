\name{regal}
\alias{regal}

\title{
Regression EPE for All Implemented Methods
}

\description{
Determine EPE for many regression methods.
}
\usage{
regal(X, y, MaxIter = 1000, d = "default", NCores = 1, plotBest = 6, 
	verboseQ = FALSE)
}

\arguments{
  \item{X}{
input matrix of dimension n-by-p with p<n
}
  \item{y}{
output vector
}
  \item{MaxIter}{
Number of CV iterations.
}
  \item{d}{
Size of hold-out sample.
}
  \item{NCores}{
Number of cores to use for parallel processing.
}
  \item{plotBest}{Number of EPE's to include on plot}

  \item{verboseQ}{True, display progress, otherwise silent.
  When running R in Windows, the usual default is output buffering which means 
  you will not see the extra output generated from verboseQ=TRUE until after 
  regal() has finished. To see the output while this function is running you 
  need to turn output buffering off. This can be done with the short-cut 
  Ctrl-W. Another way to do this is to use the R Gui. 
  Select Misc and the click on buffered output. }
}

\value{
A barplot is produced and matrix returned with rows corresponding to method
and columns containing EPE, sd(EPE), snr and two correlation estimates between
forecast and true value.
}

\author{
A. I. McLeod
}


\seealso{
\code{\link{gcv}}
}
\examples{
#about 200 seconds
\dontrun{
  data(prostate)
  X <- as.matrix.data.frame(prostate[,-9])
  y <- prostate[,9]
  system.time(m<-regal(X, y, MaxIter=1000, d=10, NCores=8, verboseQ=TRUE))[3]
  ind <- rev(order(m[,6]))
  dotchart(m[ind,6], pch=19, cex=0.5, bg=rgb(1,1,0,0.4),
       color="blue", main="CPU times")
}
}

\keyword{ models }
\keyword{ regression }


