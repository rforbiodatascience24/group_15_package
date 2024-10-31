#' Sampling a random sequence of a defined length
#'
#' @param len Length of the sequence to be sampled
#'
#' @return Sampled sequence
#' @export
#'
#' @examples
#' dna_seq <- random_seq(7)
random_seq <- function(len){
  my_seq <- sample(c("A", "T", "G", "C"), size = len, replace = TRUE)
  random_seq_collapsed <- paste0(my_seq, collapse = "")
  return(random_seq_collapsed)
}
