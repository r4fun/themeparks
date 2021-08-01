#' Get park calendar
#'
#' Return a list of park information.
#'
#' @examples
#' park_calendar("WaltDisneyWorldMagicKingdom")
#'
#' @param park Park ID, see `parks()`
#' @export
park_calendar <- function(park) {
  url <- sprintf("https://api.themeparks.wiki/preview/parks/%s/calendar", park)
  cli::cli_alert(url)
  r <- httr::RETRY(
    verb = "GET",
    url = url
  )

  httr::stop_for_status(r)
  calendar <- httr::content(r, encoding = "UTF-8")

  dplyr::bind_rows(lapply(calendar, tibble::as_tibble))
}
