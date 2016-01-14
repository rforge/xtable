### Test code for xtableFtable function
### David Scott, <d.scott@auckland.ac.nz>, 2016-01-14
library(xtable)


tbl <- ftable(mtcars$cyl, mtcars$vs, mtcars$am, mtcars$gear, row.vars = c(2, 4),
              dnn = c("Cylinders", "V/S", "Transmission", "Gears"))
xtableFtable <- function(x, caption = NULL, label = NULL, align = NULL,
                         digits = NULL, quote = TRUE,
                         method = c("non.compact", "row.compact",
                                    "col.compact", "compact"),
                         lsep = " | ", ...) {

  ftbl <- stats:::format.ftable(x, quote = quote, digits = digits,
                                method = method, lsep = lsep)
  print(unclass(xftbl))
  print(str(ftbl))
  xftbl <- xtable:::xtable.matrix(ftbl,
                         caption = caption, label = label, align = align,
                         digits = digits, display = display, auto = auto)
  print(unclass(ftbl))
  print(str(xftbl))
  xftblAttr <- attributes(xftbl)
  class(xftbl) <- c("matrix")
  print(attributes(xftbl))
  print(attributes(ftbl))
  attributes(xftbl) <- list(names = xftblAttr$names,
                            row.names = xftblAttr$row.names,
                            class = c("xtableFtable", "matrix"))

  return(xftbl)
}
debug(xtableFtable)
xftbl <- xtableFtable(tbl)
str(xftbl)
unclass(xftbl)
