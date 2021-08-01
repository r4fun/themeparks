#' Get parks
#'
#' Return a vector of supported parks.
#'
#' @examples
#' parks()
#'
#' @export
parks <- function() {
  url <- "https://api.themeparks.wiki/preview/parks"
  cli::cli_alert(url)
  r <- httr::RETRY(
    verb = "GET",
    url = url
  )

  httr::stop_for_status(r)
  unlist(httr::content(r, encoding = "UTF-8"))
}
