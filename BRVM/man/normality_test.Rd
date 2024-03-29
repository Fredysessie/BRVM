% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/brvm-normality-test.R
\name{normality_test}
\alias{normality_test}
\title{Normality test with univariate data}
\usage{
normality_test(x, type.test)
}
\arguments{
\item{x}{a numeric vector or time series..}

\item{type.test}{character such as "Anderson-Darling","Shapiro-Wilk","Jarque Bera","Cramer-von Mises","Shapiro-Francia","Lilliefors (Kolmogorov-Smirnov)","Pearson chi-square", "Agostino".}
}
\value{
a number that indicates the P-value of the normality test
}
\description{
Performs different types of normality test.
}
\examples{
\dontrun{
y <-ts(c(5353.08,5409.24,5315.57,5270.53, # one and a half week stock index
5211.66,NA,NA,5160.80,5172.37,5160.80,5172.37))  # data including a weekend
normality_test(y ,"Shapiro-Wilk")

BICC <- BRVM_get("snts", .from = "2010-02-05", .to = "2022-02-05" )
normality_test((BICC$Close), "Agostino")
normality_test((BICC$Close[1:50]), "Jarque Bera")}

}
\seealso{
\code{stationarity_test}

Other Test: 
\code{\link{stationarity_test}()}

Other BRVM: 
\code{\link{BRVM.index}()},
\code{\link{BRVM_cap}()},
\code{\link{BRVM_company_cap}()},
\code{\link{BRVM_company_rank}()},
\code{\link{BRVM_company_url}()},
\code{\link{BRVM_index_stock}()},
\code{\link{BRVM_index}()},
\code{\link{BRVM_market_activity}()},
\code{\link{BRVM_plot}()},
\code{\link{BRVM_stock_market}()},
\code{\link{BRVM_ticker_desc}()},
\code{\link{BRVM_traded_val}()},
\code{\link{company_cap}()},
\code{\link{company_country}()},
\code{\link{company_nbrank}()},
\code{\link{company_traded_val}()},
\code{\link{stationarity_test}()}
}
\author{
Koffi Frederic SESSIE
}
\concept{BRVM}
\concept{Test}
