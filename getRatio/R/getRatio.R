
#' Divide two columns and create a new column
#'
#' This function divides each row of a specified column by each row of another specified column. Both columns must be from the same data frame and the first argument must be a data frame.
#' Any row with NA will be dropped. The function will output a data frame containing a new column with the desired results.
#'
#' @param df A data frame.
#' @param i A column of a data frame.
#' @param j A column of a data frame.
#' @param k A new column of a data frame with a specified name.
#' @return A data frame containing a new column k, containing ratio data from dividing column i by column j.
#' @export
getRatio <- function(df, i, j, k) {
  df[, k] <- df[, i] / df[, j]
  return(df)
}

