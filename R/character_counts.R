#' Plot Character Counts in a Sequence
#'
#' This function takes a character string input, splits it into unique characters, counts the occurrences of each character,
#' and returns a bar plot showing the counts for each unique character.
#'
#' @param character_counts2 A character string for which unique character counts will be calculated and plotted.
#'
#' @return A ggplot object showing a bar plot of counts of each unique character in the input string.
#' @importFrom ggplot2 ggplot aes geom_col theme_bw theme
#' @importFrom stringr str_split boundary str_count
#' @export
#'
#' @examples
#' # Example with a simple sequence
#' character_counts1("AABBCCDD")
#'
#' # Example with a string containing amino acids
#' character_counts1("AAABBBCCC")
character_counts1 <- function(character_counts2) {

  # Split the input string into individual characters, convert to unique character vector
  character_counts3 <- character_counts2 |>
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) |>
    as.character() |>
    unique()

  # Count occurrences of each unique character in the input string
  counts <- sapply(character_counts3, function(amino_acid) stringr::str_count(string = character_counts2, pattern = amino_acid)) |>
    as.data.frame()

  # Rename the column of counts data frame and add a column for character names
  colnames(counts) <- c("Counts")
  counts[["character_counts2"]] <- rownames(counts)

  # Create a bar plot using ggplot2 to visualize character counts
  character_counts4 <- counts |>
    ggplot2::ggplot(ggplot2::aes(x = character_counts2, y = Counts, fill = character_counts2)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "none")

  # Return the ggplot bar plot
  return(character_counts4)
}
