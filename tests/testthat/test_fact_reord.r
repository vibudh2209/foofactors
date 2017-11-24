context("Reordering the factors")

test_that("fact_reord reorders the factors",{
	x <-c("This","is","test","examp")
	z <- c(4,3,2,1)
	z1 <- c(4,3,2,NA)
	expect_identical(fact_reord(x,z),c("This","test","is","examp"))
	expect_error(fact_reord(x,z1),"Please input non 'NA' vector y")
})
