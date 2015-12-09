print.xtableMatharray <- function(x,
           print.results = FALSE,
           format.args = getOption("xtable.format.args", NULL),
           scalebox = getOption("xtable.scalebox", NULL),
           comment = FALSE,
           timestamp = NULL,
           ...)
{
  class(x) <- c("xtableMatharray","data.frame")
  print.xtable(x, floating = FALSE,
               tabular.environment = 'array',
               include.rownames = FALSE, include.colnames = FALSE,
               hline.after = NULL,
               print.results = print.results,
               format.args = format.args,
               scalebox = scalebox,
               comment = comment,
               timestamp = timestamp,
               ...)
}
