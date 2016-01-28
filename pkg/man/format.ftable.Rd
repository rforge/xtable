%% File src/library/stats/man/read.ftable.Rd
%% Part of the R package, https://www.R-project.org
%% Copyright 1995-2014 R Core Team
%% Copyright 2002-2013 The R Foundation
%% Distributed under GPL 2 or later

%% Copied to document copy of unexported function format.ftable

\name{format.ftable}
\title{Format Flat Contingency Tables}
\alias{format.ftable}
\description{
  Format \sQuote{flat} contingency tables.
}
\usage{
\method{format}{ftable}(x, quote = TRUE, digits = getOption("digits"),
                        method = c("non.compact", "row.compact",
                                  "col.compact", "compact"),
                        lsep = " | ", \dots)
}
\arguments{
  \item{x}{an object of class \code{"ftable"}.}
  \item{quote}{a character string giving the set of quoting characters
    for \code{read.ftable}; to disable quoting altogether, use
    \code{quote=""}.  For \code{write.table}, a logical indicating
    whether strings in the data will be surrounded by double quotes.}
  \item{digits}{an integer giving the number of significant digits to
    use for (the cell entries of) \code{x}.}
  \item{method}{string specifying how the \code{"ftable"} object is formatted
    (and printed if used as in \code{write.ftable()} or the \code{print}
    method).  Can be abbreviated.  Available methods are (see the examples):
    \describe{
      \item{"non.compact"}{the default representation of an
        \code{"ftable"} object.}
      \item{"row.compact"}{a row-compact version without empty cells
        below the column labels.}
      \item{"col.compact"}{a column-compact version without empty cells
        to the right of the row labels.}
      \item{"compact"}{a row- and column-compact version.  This may imply
        a row and a column label sharing the same cell.  They are then
        separated by the string \code{lsep}.}
    }
  }
  \item{lsep}{only for \code{method = "compact"}, the separation string
    for row and column labels.}
  \item{\dots}{further arguments such as \code{method}, passed to
    \code{format()}.}
}
\details{
  This format method is a copy of \code{format.ftable} from
  \pkg{stats}, and this man page is derived from the page
  \code{\link[stats]{read.ftable}}.
}
\seealso{
  \code{\link[stats]{ftable}} and
  \code{\link[stats]{read.ftable}} for more information on flat
  contingency tables.
}
\examples{
ft22 <- ftable(Titanic, row.vars = 2:1, col.vars = 4:3)
write.ftable(ft22, quote = FALSE)
write.ftable(ft22, quote = FALSE, method="row.compact")
write.ftable(ft22, quote = FALSE, method="col.compact")
write.ftable(ft22, quote = FALSE, method="compact")
}
\keyword{category}
