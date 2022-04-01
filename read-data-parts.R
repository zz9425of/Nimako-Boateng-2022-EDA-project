
read_data_parts <- 
  function()
    dplyr::bind_rows(
      readr::read_csv("data/brfss_part_1.csv", show_col_types = FALSE),
      readr::read_csv("data/brfss_part_2.csv", show_col_types = FALSE)
    )
