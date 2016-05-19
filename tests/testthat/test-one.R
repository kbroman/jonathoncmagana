context("test project")

test_that("test out the project", {

  N <- 1000
  sigma <- 0.01

  moves <- genMoves(N, sigma)
  expect_equal( 1000, ncol(moves))
  expect_equal( 2, nrow(moves))

})
