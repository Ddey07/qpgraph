\name{qpHist}
\alias{qpHist}

\title{
Histograms of non-rejection rates
}
\description{
Plots the distribution of non-rejection rates.
}
\usage{
qpHist(nrrMatrix, A=NULL,
       titlehist = "all estimated\nnon-rejection rates", freq=TRUE)
}
\arguments{
  \item{nrrMatrix}{matrix of non-rejection rates.}
  \item{A}{adjacency matrix of an undirected graph whose present and missing
       edges will be employed to show separately the distribution of
       non-rejection rates.}
  \item{titlehist}{main title of the histogram(s).}
  \item{freq}{logical; if TRUE, the histograms show frequencies (counts) of
       occurrence of the different non-rejection rate values; if FALSE, then
       probability densities are plotted}
}
\details{
This function plots histograms using the R-function \code{\link{hist}} and therefore
the way they are displayed follows that of this R-function.
}
\value{
None
}
\references{
Castelo, R. and Roverato, A. A robust procedure for
Gaussian graphical model search from microarray data with p larger than n,
\emph{J. Mach. Learn. Res.}, 7:2621-2650, 2006.
}
\author{R. Castelo and A. Roverato}
\seealso{
  \code{\link{qpNrr}}
  \code{\link{qpAvgNrr}}
  \code{\link{qpEdgeNrr}}
  \code{\link{qpGraphDensity}}
  \code{\link{qpClique}}
}
\examples{
require(mvtnorm)

nVar <- 50  ## number of variables
maxCon <- 5 ## maximum connectivity per variable
nObs <- 30  ## number of observations to simulate

A <- qpRndGraph(p=nVar, d=maxCon)
Sigma <- qpG2Sigma(A, rho=0.5)
X <- rmvnorm(nObs, sigma=as.matrix(Sigma))

nrr.estimates <- qpNrr(X, q=5, verbose=FALSE)

qpHist(nrr.estimates, A)
}
\keyword{models}
\keyword{multivariate}
