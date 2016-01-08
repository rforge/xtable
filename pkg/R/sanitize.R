sanitize <- function(str, type) {
  if(type == "latex"){
    result <- str
    result <- gsub("\\\\", "SANITIZE.BACKSLASH", result)
    result <- gsub("$", "\\$", result, fixed = TRUE)
    result <- gsub(">", "$>$", result, fixed = TRUE)
    result <- gsub("<", "$<$", result, fixed = TRUE)
    result <- gsub("|", "$|$", result, fixed = TRUE)
    result <- gsub("{", "\\{", result, fixed = TRUE)
    result <- gsub("}", "\\}", result, fixed = TRUE)
    result <- gsub("%", "\\%", result, fixed = TRUE)
    result <- gsub("&", "\\&", result, fixed = TRUE)
    result <- gsub("_", "\\_", result, fixed = TRUE)
    result <- gsub("#", "\\#", result, fixed = TRUE)
    result <- gsub("^", "\\verb|^|", result, fixed = TRUE)
    result <- gsub("~", "\\~{}", result, fixed = TRUE)
    result <- gsub("SANITIZE.BACKSLASH", "$\\backslash$", result, fixed = TRUE)
    return(result)
  } else {
    result <- str
    result <- gsub("&", "&amp;", result, fixed = TRUE)
    result <- gsub(">", "&gt;", result, fixed = TRUE)
    result <- gsub("<", "&lt;", result, fixed = TRUE)
    return(result)
  }
}


sanitize.numbers <- function(x, type, math.style.negative){
  if (type == "latex"){
    result <- x
    if ( math.style.negative ) {
      for(i in 1:length(x)) {
        result[i] <- gsub("-", "$-$", result[i], fixed = TRUE)
      }
    }
    return(result)
  } else {
    return(x)
  }
}


sanitize.final <- function(result, type){
  if (type == "latex"){
    return(result)
  } else {
    result$text <- gsub("  *", " ",  result$text, fixed = TRUE)
    result$text <- gsub(' align="left"',  "", result$text,
                        fixed = TRUE)
    return(result)
  }
}
