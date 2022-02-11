context("Testing")

test_that("if the customer with the highes churn_prob actually has it higher", {
  expect_gt(churn_calculation(merge_file, highest_churn), churn_calculation(merge_file, lowest_churn))
})


