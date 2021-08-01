#' Get park information
#'
#' Return a list of park information.
#'
#' @examples
#' park_info("WaltDisneyWorldMagicKingdom")
#'
#' @param park Park ID, see `parks()`
#' @export
park_info <- function(park) {
  url <- sprintf("https://api.themeparks.wiki/preview/parks/%s", park)
  cli::cli_alert(url)
  r <- httr::RETRY(
    verb = "GET",
    url = url
  )

  httr::stop_for_status(r)
  httr::content(r, encoding = "UTF-8")
}
