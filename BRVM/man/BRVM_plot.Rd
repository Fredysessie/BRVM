% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/brvm_plot.R
\name{BRVM_plot}
\alias{BRVM_plot}
\title{BRVM PLOT}
\usage{
BRVM_plot(
  .company,
  from = Sys.Date() - 365,
  to = Sys.Date() - 1,
  up.col = "darkgreen",
  down.col = "red"
)
}
\arguments{
\item{.company}{is the Ticker(s) name(s)}

\item{from}{A quoted start date, ie. "2020-01-01" or "2020/01/01". The date
must be in ymd format "YYYY-MM-DD" or "YYYY/MM/DD".}

\item{to}{A quoted end date, ie. "2022-01-31" or "2022/01/31". The date must
be in ymd format "YYYY-MM-DD" or "YYYY/MM/DD"}

\item{up.col}{is the up color}

\item{down.col}{is down color}
}
\value{
An interactive chart
}
\description{
This function will get Ticker(s) data and then plot it.
}
\examples{
\dontrun{
BRVM_plot("BICC")
BRVM_plot("BICC", up.col = "blue", down.col = "pink")
BRVM_plot(c("BICC","ETIT", "BOAM"))}
}
\seealso{
\code{BRVM_ticker_desc()}

\code{BRVM_tickers()}

Other Data Retrieval: 
\code{\link{BRVM_bySector}()},
\code{\link{BRVM_cap}()},
\code{\link{BRVM_company_rank}()},
\code{\link{BRVM_get1}()},
\code{\link{BRVM_get}()},
\code{\link{BRVM_index_stock}()},
\code{\link{BRVM_index}()},
\code{\link{BRVM_market_activity}()},
\code{\link{BRVM_stock_market}()},
\code{\link{BRVM_ticker_desc}()},
\code{\link{company_cap}()},
\code{\link{company_country}()},
\code{\link{company_nbrank}()},
\code{\link{company_traded_val}()}

Other BRVM: 
\code{\link{BRVM.index}()},
\code{\link{BRVM_cap}()},
\code{\link{BRVM_company_cap}()},
\code{\link{BRVM_company_rank}()},
\code{\link{BRVM_company_url}()},
\code{\link{BRVM_index_stock}()},
\code{\link{BRVM_index}()},
\code{\link{BRVM_market_activity}()},
\code{\link{BRVM_stock_market}()},
\code{\link{BRVM_ticker_desc}()},
\code{\link{BRVM_traded_val}()},
\code{\link{company_cap}()},
\code{\link{company_country}()},
\code{\link{company_nbrank}()},
\code{\link{company_traded_val}()},
\code{\link{normality_test}()},
\code{\link{stationarity_test}()}
}
\author{
Koffi Frederic SESSIE
}
\concept{BRVM}
\concept{Data Retrieval}
\concept{Plot}
