test_that("Axis", {
  g <- g2(cars, asp(speed, dist)) %>% 
    fig_point()

  hidden <- axis_hide(g)

  expect_length(hidden$x$axis, 2)
  expect_equal(
    hidden$x$axis,
    list(list(column = "speed", opts = FALSE), list(column = "dist", opts = FALSE))
  )

  bool <- axis_x(g, FALSE)
  expect_length(bool$x$axis, 1)
  expect_equal(bool$x$axis, list(list(column = "speed", opts = FALSE)))

  opt <- axis_y(g, title = NULL)
  expect_length(opt$x$axis, 1)
  expect_null(opt$x$axis$opts$title)

  titles <- g %>% 
    axis_title_x("Hello") %>% 
    axis_title_y("World")

  expect_length(titles$x$axis, 2)
  expect_equal(titles$x$scale$speed$alias, "Hello")
})