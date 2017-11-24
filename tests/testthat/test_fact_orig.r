context("Reordering the factors based on original input")
test_that("fact_orig reorders the factors based on original input",{
	x <-c("This","is","test","examp")
	x1 <- c(2,3,4,1)
	q <- factor(x,levels=c("This","is","test","examp"))
	expect_error(fact_orig(x1),"Input vector is neither character nor factor")
	expect_identical(fact_orig(x),q)
})
