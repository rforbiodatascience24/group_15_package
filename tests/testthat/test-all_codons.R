sequence = "ATGCGATAC"
codons <- c("ATG", "CGA", "TAC")

test_that("All the codons found in the sequence are returned", {
  expect_equal(all_codons(sequence), codons)
})
