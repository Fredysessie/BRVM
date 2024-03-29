#' BRVM Get - Get BRVM indexes Data
#'
#' @family Data Retrieval
#' @family BRVM
#'
#' @author Koffi Frederic SESSIE
#' @author Oudouss Diakité Abdoul
#' @author Steven P. Sanderson II, MPH
#'
#' @seealso \url{https://www.brvm.org/en/indices/status/200}
#'
#' @details This function will get index data from \url{www.brvm.org}
#'
#' @description This function will get data from \url{www.brvm.org}.
#'
#' @examples
#' \dontrun{BRVM_index()}
#' @return
#' A tibble
#'
#' @export
#'

BRVM_index <- function(){
  tryCatch(
    {
      index <- read_html("https://www.brvm.org/en/indices/status/200") %>% 
        html_nodes('table') %>%
        html_table()
      index <- index[[4]][-6]
      index$`Previous closing`<-gsub(" ", "", index$`Previous closing`)
      index$`Previous closing`<-gsub(",", ".", index$`Previous closing`)
      index$`Previous closing`<-as.numeric(index$`Previous closing`)
      #index$`Previous closing` <-round(index$`Previous closing` , digits = 2)
      index$Closing <-gsub(" ", "", index$Closing)
      index$Closing <-gsub(",", ".", index$Closing)
      index$Closing <-as.numeric(index$Closing)
      #index$`Closing` <-round(index$`Closing` , digits = 2)
      index$`Change (%)`<-gsub(",", ".", index$`Change (%)`)
      index$`Change (%)`<-as.numeric(index$`Change (%)`)
      index$`Year to Date Change`<-gsub(",", ".", index$`Year to Date Change`)
      index$`Year to Date Change`<-as.numeric(index$`Year to Date Change`)
      names(index)<- c(
        "Indexes",
        "Previous closing",
        "Closing",
        "Change (%)",
        "Year to Date Change") 
      index$Indexes<-str_replace(index$Indexes, "BRVM - INDUSTRIE", "BRVM - INDUSTRY")
      index$Indexes<-str_replace(index$Indexes, "BRVM - AUTRES SECTEURS", "BRVM - OTHER SECTOR")
      index$Indexes<-str_replace(index$Indexes, "SERVICES PUBLICS", "PUBLIC SERVICES")
      return(index)
    },
    error = function(e) {
      print("Make sure you have an active internet connection")
    },
    warning = function(w) {
      print("Make sure you have an active internet connection")
    }
  )
  
}
