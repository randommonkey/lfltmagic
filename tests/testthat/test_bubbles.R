context("lflt magic prep")

test_that("Bubbles", {

  data <- data.frame(Countries = c(rep("COL", 33),
                                   rep("ARG", 41),
                                   rep("LSO", 37)), stringsAsFactors = FALSE)
  data[[1]] <- as_Gcd(data[[1]])
  opts <- dsvizopts::dsviz_defaults()
  l <- lfltmagic_prep(data, opts, by_col = "id", ftype = "Gcd")
  lfltmagic:::lflt_basic_bubbles(l)


  expect_equal(sum(l$d@data$..count, na.rm = TRUE), nrow(data))




  data <- data.frame(Ciudad = c(rep("Cauca", 15),
                                rep("chocó", 11),
                                rep("nariño", 31),
                                rep("Santander", 73)),
                      Cosa = c(rep("Río", 7), rep("Montaña", 8),
                               rep("Mar", 5), rep("Montaña", 6),
                               rep("Volcanes", 13), rep("Río", 18),
                               rep("Montaña", 65), rep("Río", 8)),
                     stringsAsFactors = FALSE
                     )

  opts <- dsvizopts::dsviz_defaults()
  opts$extra$map_name <- "col_departments"
  l <- lfltmagic_prep(data, opts, by_col = "name", ftype = "Gnm-Cat")

  expect_equal(sum(l$d@data$..count, na.rm = T), nrow(data))



})




test_that("Bubbles Gcd", {

  # Bubbles Gnm
  data <- sample_data("Gnm", n = 30)
  lflt_bubbles_Gnm(data)

  # Bubbles Gnm Num
  data <- sample_data("Gnm-Num", n = 30)
  lflt_bubbles_GnmNum(data)


  # Bubbles Gnm Cat Num
  data <- sample_data("Gnm-Cat-Num", n = 30)
  lflt_bubbles_GnmCatNum(data)

  # Bubbles Gnm Cat
  data <- sample_data("Gnm-Cat", n = 30)
  lflt_bubbles_GnmCat(data)

  # Bubbles Gcd Num
  data <- sample_data("Gcd-Num", n = 30)
  lflt_bubbles_GcdNum(data)

  # Bubbles Gcd Cat
  data <- sample_data("Gcd-Cat-Dat-Yea-Cat", n = 30, addNA = F)
  lflt_bubbles_GcdCat(data)
  lflt_bubbles_GcdCat(data,
                      color_by = names(data)[2],
                      palette_type = "sequential")

  names_data <- names(data)
  info_tool <- paste0("<b>",names_data[1],":</b> {", names_data[1],"}<br/><b>", names_data[2],":</b> {", names_data[2],"}<br/>")
  data %>%
   lflt_bubbles_GcdCat(tooltip = info_tool)


  # Bubbles Gcd Cat Num
  lflt_bubbles_GcdCatNum()

  df <- sample_data("Gcd-Cat-Num")
  lflt_bubbles_GcdCatNum(data = df)


  # Bubbles Glt Gln
  data <- sample_data("Gln-Glt", n = 30)
  lflt_bubbles_GlnGlt(data)

  # Bubbles Glt Gln Num
  data <- sample_data("Gln-Glt-Num", n = 30)
  lflt_bubbles_GlnGltNum(data)


  data <- sample_data("Gln-Glt-Cat", n = 30)
  lflt_bubbles_GlnGltCat(data)


  # data with more of one column
  data <- sample_data("Gln-Glt-Cat-Dat-Yea-Cat", n = 30)
  lflt_bubbles_GlnGltCat(data)

  # Change variable to color and pallete type
  lflt_bubbles_GlnGltCat(data,
                         color_by = names(data)[3],
                         palette_type = "sequential")

  # Bubbles Gln Glt Cat Num
  data <- sample_data("Gln-Glt-Cat-Num", n = 30)
  lflt_bubbles_GlnGltCatNum(data)


  lflt_bubbles_GlnGltCatNum(data,
                         agg = "mean",
                         color_by = names(data)[4],
                         palette_type = "sequential")


  data <- sample_data("Gln-Glt-Cat-Num-Dat-Yea-Cat", n = 30)
  lflt_bubbles_GlnGltCatNum(data)


  lflt_bubbles_GlnGltCatNum(data,
                         color_by = names(data)[3],
                         palette_type = "sequential")
})

