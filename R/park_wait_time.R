#' Get park wait times
#'
#' Return a list of park wait times.
#'
#' @examples
#' park_wait_times("WaltDisneyWorldMagicKingdom")
#'
#' @param park Park ID, see `parks()`
#' @export
park_wait_times <- function(park) {
  url <- sprintf("https://api.themeparks.wiki/preview/parks/%s/waittime", park)
  cli::cli_alert(url)
  r <- httr::RETRY(
    verb = "GET",
    url = url
  )

  httr::stop_for_status(r)
  rides <- httr::content(r, encoding = "UTF-8")

  dplyr::bind_rows(lapply(rides, function(ride) {
    out <- lapply(ride, function(info) {
      if (is.null(info)) {
        NA
      } else {
        info
      }
    })

    janitor::clean_names(tibble::as_tibble(out))
  }))
}
