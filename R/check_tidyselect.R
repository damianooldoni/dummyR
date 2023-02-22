#' Check possible notes/warnings while using .data$ pronoun and NSE/SE
#' evaluation, NSE/SE
#'
#' @param df a tibble data.frame with at least two columns: `col_a` and `col_b`
#' @param colToChange character with column name to change
#' @return A tibble data.frame
#' 
#' @importFrom dplyr %>% .data
#' @importFrom rlang !! :=
#' @export
#'
#' @examples
#' library(dummyr)
#' check_tidyselect(dummy_df, "col_c")
check_tidyselect <- function(df, colToChange) {
  df %>%
    dplyr::filter("col_b" %in% c(4, 5)) %>%
    dplyr::select("col_a", "col_c") %>%
    dplyr::rename(c := !!colToChange)
}
