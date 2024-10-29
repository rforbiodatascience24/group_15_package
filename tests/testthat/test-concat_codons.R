test_that("concat_codons works correctly", {



  # Test a typical case
  expect_equal(concat_codons(c(3)), "Y")   # Expected output: "Y"
})
