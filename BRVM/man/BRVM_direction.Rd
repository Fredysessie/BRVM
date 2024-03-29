% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/brvm-up-down.R
\name{BRVM_direction}
\alias{BRVM_direction}
\title{BRVM Rank}
\usage{
BRVM_direction(.up_or_down = "Up")
}
\arguments{
\item{.up_or_down}{This is a character string set to "Up" It can either be
'Up' or 'Down'.}
}
\value{
A tibble
}
\description{
This function will take in 'Up' or 'Down' and returns respectively n results for the top or flop ranking
of the BRVM tickers.
}
\details{
This function will get any n results for the top or flop ranking
of the BRVM tickers.
}
\examples{
\dontrun{BRVM_direction("Up")}

}
\author{
Koffi Frederic SESSIE

Oudouss Diakité Abdoul

Steven P. Sanderson II, MPH
}
\concept{Ranking}
\concept{Ticker Data Retrieval}
