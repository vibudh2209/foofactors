context("Reordering the factors")
test_that("fact_reord reorders the factors",{
	x <-c("This","is","test","examp")
	z <- c(3,1,4,2)
	z1 <- c(3,2,1,4,5)
	q <- factor(x,levels=c("is","examp","This","test"))
	expect_error(fact_reord(x,z1),"Vectors should be of same length")
	expect_identical(fact_reord(x,z),q)
})
