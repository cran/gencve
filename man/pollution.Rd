\name{pollution}
\alias{pollution}
\docType{data}
\title{
Pollution Data from McDonald and Schwing 
}
\description{
The total age adjusted mortality rate, our response variable,  for the years 1959-1961. 
The data from the U.S. covers 201 Standard Metropolitan Statistical Areas (SMSA).
}
\usage{data("pollution")}
\format{
  A data frame with 60 observations on the following 16 variables.
  \describe{
    \item{\code{PREC}}{Average annual precipitation in inches}
    \item{\code{JANT}}{Average January temperature in degrees F}
    \item{\code{JULT}}{Average January temperature in degrees F}
    \item{\code{OVR65}}{Percent of 1960 SMSA population aged 65 or older}
    \item{\code{POPN}}{Average household size}
    \item{\code{EDUC}}{Median school years completed by those over 22}
    \item{\code{HOUS}}{Percent of housing units which are sound and with all facilities}
    \item{\code{DENS}}{Population per sq. mile in urbanized areas, 1960}
    \item{\code{NONW}}{Percent non-white population in urbanized areas, 1960}
    \item{\code{WWDRK}}{Percent employed in white collar occupations}
    \item{\code{POOR}}{Percent of families with income less than 3000 USD}
    \item{\code{HC}}{Relative hydrocarbon pollution potential}
    \item{\code{NOX}}{Relative nitric oxides pollution potential}
    \item{\code{SOx}}{Relative sulphur pollution potential}
    \item{\code{HUMID}}{Annual average percent relative humidity at 1pm}
    \item{\code{MORT}}{Total age-adjusted mortality rate per 100,000}
  }
}
\references{
1973 Technometrics paper by McDonald and Schwing
}
\examples{
data(pollution)
str(pollution)
}
\keyword{datasets}
