#' Concatenate Codons into a single string
#'
#' @param codons A vector of indices corresponding to elements in `codon_table` to be concatenated.
#'
#' @return A single concatenated string formed by the elements at specified indices in `codon_table`.
#' @export
#'
#' @examples
concat_codons <- function(codons){
  sequence <- paste0(codon_table[codons], collapse = "")
  return(sequence)
}


