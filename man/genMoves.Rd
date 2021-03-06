% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/genMoves.R
\name{genMoves}
\alias{genMoves}
\title{two-dimensional Brownian motion}
\usage{
genMoves(N = 1000, sigma = 0.1)
}
\arguments{
\item{N}{number of moves}

\item{sigma}{SD of moves}
}
\description{
simulate two-dimensional Brownian motion
}
\examples{
moves <- genMoves()
plotMoves(moves)
}

