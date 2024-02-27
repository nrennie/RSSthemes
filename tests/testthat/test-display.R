test_that("palette display", {

  expect_silent(view_all_palettes())
  expect_error(view_all_palettes(type = "seq"))

  expect_error(RSScols("new_name"))
  expect_error(RSScols("signif_qual", n = 4))
  expect_error(RSScols("signif_qual", type = "cont"))
  expect_error(RSScols("signif_qual", direction = 0))
  expect_silent(RSScols("signif_qual", direction = -1))

})
