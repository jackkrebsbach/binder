options(
  repos = c(CRAN = "https://cloud.r-project.org"),
  torch.download_non_interactive = TRUE,
  torch.download_quiet = TRUE
)

message("Installing CRAN packages...")

install.packages(c(
  "IRkernel",
  "tidyverse",
  "data.table",
  "ggplot2",
  "remotes",
  "numbers",
  "trust",
  "deSolve"
))

message("Installing symengine...")
install.packages("symengine")

message("Installing torch...")
install.packages("torch")
torch::install_torch()

message("Installing GitHub package...")
remotes::install_github("jackkrebsbach/rwendy")

message("Registering IRkernel...")
IRkernel::installspec(user = FALSE)

message("DONE")
