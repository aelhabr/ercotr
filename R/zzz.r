
# References:
# 1. https://github.com/hrbrmstr/hrbrthemes/blob/master/R/zzz.r.
# 2. https://github.com/metrumresearchgroup/sinew/blob/master/R/zzz.R

print_pkgstartupmsg <- function(msg) {
  paste0(strwrap(msg, width = 80), sep = "", collapse = "\n")
}

# Note that paste0 is not necessary.
.onAttach <- function(libname, pkgname) {
  # packageStartupMessage(
  msg_1 <-
    paste0(
    "This package is primarily intended for internal use only",
    " (although it does not contain any confidential information).",
    " See https://github.com/aelhabr/ercotr for examples."
    )
  packageStartupMessage(
    # paste0(strwrap(msg1, width = 80), sep = "", collapse = "\n")
    print_pkgstartupmsg(msg_1)
  )
  msg_2 <-
    paste0(
    "Note the global variables now loaded into your environment.",
    " These include `ercot_palette` (which is equivalent to `ercot_palette_w_contrast`)",
    " and `ercot_palette2` (which is equivalent to to `ercot_palette_wo_contrast`).",
    " These variables are used in the `scale_color/fill_manual()`",
    " and `scale_color/fill_manual2()` functions respectively."
  )
  packageStartupMessage(
    # paste0(strwrap(msg2, width = 80), sep = "", collapse = "\n")
    print_pkgstartupmsg(msg_2)
  )

}

# .onAttach <- function(libname, pkgname) {
#   if (interactive()) {
#     packageStartupMessage(
#       paste0("This package is under *active* development."))
#   }
# }
