dna="ATG"
expected_rna="AUG"

test_that("dna to rna works", {
  expect_equal(dna_to_rna(dna), expected_rna)
})
