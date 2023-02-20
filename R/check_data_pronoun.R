#' Check possible notes/warnings while using .data$ pronoun and NSE/SE
#' evaluation
#'
#' @param df a tibble data.frame with at least two columns: `col_a` and `col_b`
#'
#' @return A tibble data.frame
#' @export
#'
#' @examples
#' library(dummyr)
#' check_tidyselect(dummy_df)
check_tidyselect <- function(df) {
  df %>%
    select(col_a, col_b) %>%
    filter(col_a == 1)
}