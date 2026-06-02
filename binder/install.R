options(repos = c(CRAN = "https://cloud.r-project.org"))

message("Installing CRAN packages...")

install.packages(c(
  "IRkernel",
  "remotes",
  "deSolve"
))

message("Installing GitHub package (wendy)...")
# wendy's other dependencies (trust, MASS, minpack.lm) are pulled in
# automatically from its DESCRIPTION. The symbolic backend defaults to a
# pure base-R implementation, so symengine is not required.
remotes::install_github("jackkrebsbach/rwendy")

message("Registering IRkernel...")
IRkernel::installspec(user = FALSE)

message("DONE")
