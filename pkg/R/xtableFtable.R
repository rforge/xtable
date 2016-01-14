### ftable objects, requested by Charles Roosen
### Feature request #2248, 2/9/2012
xtableFtable <- function(x, caption = NULL, label = NULL, align = NULL,
                         digits = NULL, display = NULL, auto = FALSE,
                         quote = TRUE,
                         method = c("non.compact", "row.compact",
                                    "col.compact", "compact"),
                         lsep = " | ", ...) {
  ftbl <- format.ftable(x, quote = quote, digits = digits,
                        method = method, lsep = lsep)
  xftbl <- xtable.matrix(ftbl,
                         caption = caption, label = label, align = align,
                         digits = digits, display = display, auto = auto)
  class(xftbl) <- c("xtableFtable", "data.frame")
  attributes(xftbl) <- list(attributes(xftbl), attributes(ftbl))
  return(xftbl)
}

print.xtableFtable <- function(x,
  type = getOption("xtable.type", "latex"),
  file = getOption("xtable.file", ""),
  append = getOption("xtable.append", FALSE),
  floating = getOption("xtable.floating", TRUE),
  floating.environment = getOption("xtable.floating.environment", "table"),
  table.placement = getOption("xtable.table.placement", "ht"),
  caption.placement = getOption("xtable.caption.placement", "bottom"),
  caption.width = getOption("xtable.caption.width", NULL),
  latex.environments = getOption("xtable.latex.environments", c("center")),
  tabular.environment = getOption("xtable.tabular.environment", "tabular"),
  size = getOption("xtable.size", NULL),
  hline.after = getOption("xtable.hline.after", NULL),
  NA.string = getOption("xtable.NA.string", ""),
  only.contents = getOption("xtable.only.contents", FALSE),
  add.to.row = getOption("xtable.add.to.row", NULL),
  sanitize.rownames.function = getOption("xtable.sanitize.rownames.function",
                                         sanitize.text.function),
  sanitize.colnames.function = getOption("xtable.sanitize.colnames.function",
                                         sanitize.text.function),
  math.style.negative = getOption("xtable.math.style.negative", FALSE),
  math.style.exponents = getOption("xtable.math.style.exponents", FALSE),
  html.table.attributes = getOption("xtable.html.table.attributes", "border=1"),
  print.results = getOption("xtable.print.results", TRUE),
  format.args = getOption("xtable.format.args", NULL),
  rotate.rownames = getOption("xtable.rotate.rownames", FALSE),
  rotate.colnames = getOption("xtable.rotate.colnames", FALSE),
  booktabs = getOption("xtable.booktabs", FALSE),
  scalebox = getOption("xtable.scalebox", NULL),
  width = getOption("xtable.width", NULL),
  comment = getOption("xtable.comment", TRUE),
  timestamp = getOption("xtable.timestamp", date()),
  ...) {
  if (type == "latex"){
    if (is.null(align) {
      align <- c(rep("r", nRowVars)
    } else {
    stop("print.xtableFtable not yet implemented for this type")
  }
}

