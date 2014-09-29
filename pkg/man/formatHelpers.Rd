\name{xalign}
\alias{xalign}
\alias{xdigits}
\alias{xdisplay}
\title{Suggest Appropriate Formatting}
\description{
  Suggest an appropriate alignment, number of digits, and display type
  for \code{xtable}.
}
\usage{
xalign(x, pad = TRUE)
xdigits(x, pad = TRUE, zap = getOption("digits"))
xdisplay(x, pad = TRUE)
}
\arguments{
  \item{x}{a vector, matrix, or data frame.}
  \item{pad}{whether to format row names, when \code{x} is
    two-dimensional.}
  \item{zap}{the number of digits passed to \code{zapsmall}.}
}
\value{
  \code{xalign} returns a character vector consisting of \code{"l"} and
  \code{"r"} elements, for left/right alignment.

  \code{xdigits} returns an integer vector.

  \code{xdisplay} returns a character vector of \code{"d"}, \code{"f"},
  and \code{"s"} elements, for integer/double/string display.
}
\author{Arni Magnusson.}
\seealso{
  \code{\link{xtable}}, \code{\link{align}}, \code{\link{digits}},
  \code{\link{display}}
}
\examples{
## Vector
xalign(precip)
xdigits(precip)
xdisplay(precip)

## Data frame
head(mtcars)
xdigits(mtcars, pad = FALSE)
xdigits(mtcars, pad = TRUE)
xalign(mtcars)
xdisplay(mtcars)

## Autoformat when xtable is created
xtable(mtcars, align = xalign(mtcars), digits = xdigits(mtcars),
       display = xdisplay(mtcars))

## Autoformat existing xtable
mt <- xtable(mtcars)
align(mt) <- xalign(mt)
digits(mt) <- xdigits(mt)
display(mt) <- xdisplay(mt)
}
\keyword{array}
\keyword{print}
