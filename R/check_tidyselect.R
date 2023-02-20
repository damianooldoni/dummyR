#' Check possible notes/warnings while using .data$ pronoun and NSE/SE
#' evaluation, NSE/SE
#'
#' @param df a tibble data.frame with at least two columns: `col_a` and `col_b`
#'
#' @return A tibble data.frame
#' 
#' @importFrom dplyr %>%
#' @export
#'
#' @examples
#' library(dummyr)
#' check_tidyselect(dummy_df)
check_tidyselect <- function(df) {
  df %>%
    dplyr::filter(col_b %in% c(4, 5)) %>%
    dplyr::select(col_a, col_c) %>%
    dplyr::rename(c = col_c)
}