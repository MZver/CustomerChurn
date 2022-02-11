context("Testing")

test_that("if the customer with the highes churn_prob actually has it higher", {
  expect_gt(highest_churn(merge_file), lowest_churn(merge_file))
})
