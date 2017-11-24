context("Detecting factors or characters")

test_that("fact_detect detects factors character or not",{
	x <-factor(c("Just","Trying","to","test"))
	y <-factor(c("Just","Trying","to","test","to","Just","try"))
	z <- c("Just","Trying","to","test")
	expect_identical(fact_detect(x),TRUE)
	expect_identical(fact_detect(y),FALSE)
	expect_error(fact_detect(z),"Your input is not a factor please input factor")
})
