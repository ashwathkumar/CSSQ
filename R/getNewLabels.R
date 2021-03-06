#' Labels the samples according to the combinations from \code{\link{getComparisons}}
#'
#' This function labels the samples according the combinations generated by 
#' \code{\link{getComparisons}}.
#' 
#' @param trueLabel The true labels for the samples.
#' @param comparison A vector containing the comparison to be made. Names here 
#' need to correspond to the sample groups in the sample file (Eg. c("G1",G2") 
#' means the comparison G1/G2).
#' @param numSamples Number of samples in the dataset.
#' @param combns Possible combinations of sample index generated in 
#' \code{\link{getComparisons}}.
#' @param index index of the combination to use for labeling.
#' 
#' @return A vector with labels.
#' @seealso \code{\link{getComparisons}} which calls this function
#' 

getNewLabels <- function(trueLabel,comparison,numSamples,combns,index){
    newLabel <- rep (comparison[1],numSamples)
    newLabel[combns[,index]] <- comparison[2]
    return(newLabel)
}