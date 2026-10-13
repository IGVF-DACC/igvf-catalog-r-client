# Offline checks that the generated client loads and exposes the API.

test_that("the API class has the generated endpoint methods", {
  api <- IgvfCatalogApi$new()
  for (method in c("Genes", "Variants", "GenesFromVariants", "LlmQuery")) {
    expect_true(is.function(api[[method]]), info = method)
  }
})

test_that("the base path can be overridden", {
  client <- ApiClient$new(base_path = "https://example.org/api")
  expect_equal(client$base_path, "https://example.org/api")
})
