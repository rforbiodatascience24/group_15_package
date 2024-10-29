#' Title: dna_to_rna
#'
#' @param dna sequence of DNA in a string
#'
#' @return rna sequence after T has been substituted by U
#' @export
#'
#' @examples
#' dna_seq <-"ATG"
#' rna_seq <- dna_to_rna(dna_seq)
dna_to_rna <- function(dna){
  rna <- gsub("T", "U", dna)
  return(rna)
}
