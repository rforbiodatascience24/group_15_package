#' Title : All codons in the given sequence
#'
#' @param sequence a string representing a DNA or RNA sequence
#' @param start starting position to define where the codon extraction begins
#'
#' @return The function returns all the codons found in the provided DNA/RNA sequence.
#' @export
#'
#' @examples all_codons("ATGGCT")
all_codons <- function(sequence, start = 1){
  char_num <- nchar(sequence)
  codons <- substring(sequence,
                      first = seq(from = start, to = char_num-3+1, by = 3),
                      last = seq(from = 3+start-1, to = char_num, by = 3))
  return(codons)
}
