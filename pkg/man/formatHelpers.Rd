\name{xalign}
\alias{xalign}
\alias{xdigits}
\alias{xdisplay}
\title{Suggest Appropriate Formatting}
\description{
  Suggest an appropriate \code{xtable} alignment, appropriate number of
  digits, or display type for a vector, or each column of a matrix or
  data frame.
}
\usage{
xalign(x, pad = TRUE)
xdigits(x, pad = TRUE, zap = getOption("digits"))
xdisplay(x, pad = TRUE)
}
\arguments{
  \item{x}{a vector, matrix, or data frame.}
  \item{pad}{when \code{x} is two-dimensional, \code{pad = TRUE} inserts
    an extra code for the row names: \code{"l"} alignment , \code{0}
    digits, and \code{"s"} display.}
  \item{zap}{the number of digits passed to \code{zapsmall}.}
}
\value{
  A character or a vector of characters, specifying the suggested
  alignment, number of digits, or display type.
}
\author{Arni Magnusson.}
\seealso{
  \code{\link{xtable}}.
}
\examples{
## Vector
xalign(precip)
xdigits(precip)
xdisplay(precip)

## Data frame
head(mtcars)
xalign(mtcars, pad = FALSE)
xalign(mtcars, pad = TRUE)
xtable(mtcars, align = xalign(mtcars))

xdigits(mtcars, pad = FALSE)
xdigits(mtcars, pad = TRUE)
xtable(mtcars, digits = xdigits(mtcars))

xdisplay(mtcars, pad = FALSE)
xdisplay(mtcars, pad = TRUE)
xtable(mtcars, display = xdisplay(mtcars))

## Postprocessing an xtable
state <- xtable(state.x77)
align(state) <- xalign(state)
digits(state) <- xdigits(state)
display(state) <- xdisplay(state)
}
\keyword{array}
\keyword{print}
