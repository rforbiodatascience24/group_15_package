cdmb
================

<!-- README.md is generated from README.Rmd. Please edit that file -->

``` r
library(cdmb)
```

# Link to Group 15 Github repository:

<https://github.com/rforbiodatascience24/group_15_package>

# General description

The aim of this R package is to replicate the central dogma of molecular
biology

**random_seq ()**

Generates a random DNA sequence of a specified length.

It takes a single argument, len, which determines the length of the
sequence to be created.

The function randomly samples from the four DNA nucleotides (“A”, “T”,
“G”, “C”) with replacement to ensure each position in the sequence is
independent of the others.

``` r
cdmb::random_seq(7)
#> [1] "TCCACCT"
```

**dna_to_rna ()**

dna_to_rna takes an input sequence of DNA and transforms it into RNA by
substituting the T by U

``` r
dna_seq <-"ATG"
rna_seq <- dna_to_rna(dna_seq)
print(rna_seq)
#> [1] "AUG"
```

**all_codons**

- The function returns all the codons found in the provided DNA/RNA
  sequence.
- For function to be executed, user must provide the sequence (RNA or
  DNA). The `start` argument is an optional offset specifying where in
  the sequence to start grouping into codons, with a default of 1.
- The output of the sequence is a character vector of the codons found
  in the provided sequence.
- If the length of the sequence is not a multiple of 3, only the full
  codons will be returned (the function skips any remaining characters
  at the end that don’t complete a codon).
- Example usage:

``` r
all_codons("ATGCGATACAC", start = 1)
#> [1] "ATG" "CGA" "TAC"
```

**concat_codons**

This function concatenates and retrieves specified elements from
codon_table based on provided indices.

concat_codons(c(?, ?, ?))

#### Example usage

codons \<- c(1, 3, 4) result \<- concat_codons(codons) print(result) \#
Expected output: “AGC”

``` r
concat_codons(c(1, 3, 4))
#> [1] "FYC"
```

**character_counts1**

- The function takes an input string

- It splits the string into individual characters and extracts unique
  characters, ignoring duplicate occurrences.

- For each unique character, the function calculates how many times it
  appears in the original string.

- It stores the character counts in a data frame with columns for
  character names and their respective counts.

- It returns a bar plot where each unique character is represented on
  the x-axis and its count on the y-axis.

Example: Basic Usage with a Simple Sequence The example below
demonstrates how to use character_counts1() on a simple string with
repeated characters:

``` r
# Example with a simple repeated character sequence
character_counts1("AABBCCDD")
```

<img src="man/figures/README-unnamed-chunk-6-1.svg" width="100%" />

Use cases for the package

This package can be used for analyzing DNA sequences.
