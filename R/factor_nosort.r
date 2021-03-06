#' Fast Factor Generation
#'
#' This function generates factors more quickly, without leveraging
#' \code{fastmatch}. The speed increase with \code{fastmatch} for ICD-9 codes
#' was about 33% reduction for 10 million codes. SOMEDAY could be faster still
#' using \code{Rcpp}, and a hashed matching algorithm.
#'
#' \code{NaN}s are converted to \code{NA} when used on numeric values. Extracted
#' from https://github.com/kevinushey/Kmisc.git
#'
#' These feature from base R are missing: \code{exclude = NA, ordered =
#' is.ordered(x), nmax = NA}
#' @author Kevin Ushey, adapted by Jack Wasey
#' @param x An object of atomic type \code{integer}, \code{numeric},
#'   \code{character} or \code{logical}.
#' @param levels An optional character vector of levels. Is coerced to the same
#'   type as \code{x}. By default, we compute the levels as
#'   \code{sort(unique.default(x))}.
#' @param labels A set of labels used to rename the levels, if desired.
#' @examples
#' \dontrun{
#' pts <- icd:::random_unordered_patients(1e7)
#' u <- unique.default(pts$code)
#' # this shows that stringr (which uses stringi) sort takes 50% longer than
#' # built-in R sort.
#' microbenchmark::microbenchmark(sort(u), str_sort(u))
#'
#' # this shows that \code{factor_} is about 50% faster than \code{factor} for
#' # big vectors of strings
#'
#' # without sorting is much faster:
#' microbenchmark::microbenchmark(factor(pts$code),
#'   # factor_(pts$code),
#'   factor_nosort(pts$code),
#'   times = 25
#' )
#' }
#' @details I don't think there is any requirement for factor levels to be
#'   sorted in advance, especially not for ICD-9 codes where a simple
#'   alphanumeric sorting will likely be completely wrong.
#' @export
factor_nosort <- function(x, levels = NULL, labels = levels) {
  if (is.factor(x)) {
    return(x)
  }
  if (is.null(levels)) levels <- unique.default(x)
  suppressWarnings(f <- match(x, levels))
  levels(f) <- as.character(labels)
  class(f) <- "factor"
  f
}
