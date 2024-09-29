options(repos = c(CRAN = "https://cran.rstudio.com/"))

# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'

hello <- function() {
  print("Hello, world!")
}
#' creates histogram, box plot and numeric summary
#' @export
ds<- function(x){
  # 1 row and 2 colmns
  par(mfrow=c(1,2))
  # Histogram
  hist(x, col=rainbow(30))
  # Boxplot
  boxplot(x,col='green')
  par(mfrow=c(1,1))
  # Numeric summary
  data.frame(min=min(x),
             median=median(x),
             mean=mean(x),
             max=max(x))
}

install.packages("roxygen2")
library(roxygen2)
#' Title for ds Function
#'
#' A detailed description of what the `ds` function does.
#'
#' @param param1 Description of the first parameter.
#' @param param2 Description of the second parameter.
#' @return Description of the return value.
#' @examples
#' ds(param1 = value1, param2 = value2)
#' @export
ds <- function(param1, param2) {
  # Function implementation
}
