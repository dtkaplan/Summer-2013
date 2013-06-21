# A simple outlier function

outlier <- function(x, data=NULL){
  x <- if(is.null(data)) x else eval(substitute(x),data)
  stats <- qdata(c(.25,.75), x, data=data)
  iqr = diff(stats)
  return((x >= (stats[2] + 1.5*iqr)) | (x <= (stats[1] -1.5*iqr)))
}