options(
  torch.download_non_interactive = TRUE,
  torch.download_quiet = TRUE
)

install.packages(c(
  "IRkernel",
  "tidyverse",
  "data.table",
  "ggplot2",
  "remotes",
  "symengine",
  "numbers",
  "trust",
  "torch",
  "deSolve",
), repos = "https://cloud.r-project.org")


torch::install_torch()

library(remotes)
install_github("jackkrebsbach/rwendy")

IRkernel::installspec(user = FALSE)

