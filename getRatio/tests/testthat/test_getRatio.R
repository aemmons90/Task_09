library(testthat)
library(getRatio)
library(dplyr)

#manually creating output of function
dat <- Bone %>%
  transform("HuBac" = Bone$Bacterial.DNA/Bone$Human.DNA)


#df is outdata of the function tested
outdat<- getRatio(Bone, "Bacterial.DNA", "Human.DNA", "HuBac")

test_that("results in expected output", {
  expect_true(identical(outdat, dat))
})

test_check("getRatio")
