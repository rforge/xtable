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


sanitize.numbers <- function(str, type, math.style.negative){
  if (type == "latex"){
    result <- str
    if ( math.style.negative ) {
      for(i in 1:length(str)) {
        result[i] <- gsub("-", "$-$", result[i], fixed = TRUE)
      }
    }
    return(result)
  } else {
    return(str)
  }
}


sanitize.final <- function(str, type){
  if (type == "latex"){
    return(str)
  } else {
    str$text <- gsub("  *", " ",  str$text, fixed = TRUE)
    str$text <- gsub(' align="left"',  "", str$text,
                        fixed = TRUE)
    return(str)
  }
}
