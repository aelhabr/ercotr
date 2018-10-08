
# Note the following:
# 1) Can use the same rdname with multiple functions. However, should
# NOT specify the same paramter twice when doing this
# (i.e. Specifying the dots parameter a second time with the same @rdname
# raises a warning with devtools::check())

#' @title ercot_pal
#' @description with contrast
#' @rdname scale_ercot
#' @export
#' @importFrom scales manual_pal
ercot_pal <-
  function() {
    scales::manual_pal(ercot_palette_w_contrast)
  }


#' @title ercot_pal2
#' @description withOUT contrast
#' @rdname scale_ercot2
#' @export
#' @importFrom scales manual_pal
ercot_pal2 <-
  function() {
    scales::manual_pal(ercot_palette_wo_contrast)
  }

#' @rdname scale_ercot
#' @param ... dots
#' @export
#' @importFrom ggplot2 discrete_scale
scale_color_ercot <-
  function(...) {
    ggplot2::discrete_scale("colour",
                            "ercot",
                            # scales::manual_pal(ercot_palette_w_contrast, ...))
                            ercot_pal(), ...)
  }

#' @rdname scale_ercot2
#' @param ... dots
#' @export
#' @importFrom ggplot2 discrete_scale
scale_color_ercot2 <-
  function(...) {
    ggplot2::discrete_scale("colour",
                            "ercot",
                            # scales::manual_pal(ercot_palette_wo_contrast, ...))
                            ercot_pal2(), ...)
  }

#' @rdname scale_ercot
#' @export
#' @importFrom ggplot2 discrete_scale
scale_fill_ercot <-
  function(...) {
    ggplot2::discrete_scale("fill",
                            "ercot",
                            # scales::manual_pal(ercot_palette_w_contrast, ...))
                            ercot_pal(), ...)
  }

#' @title scale_fill_ercot2
#' @rdname scale_ercot2
#' @export
#' @importFrom ggplot2 discrete_scale
scale_fill_ercot2 <-
  function(...) {
    ggplot2::discrete_scale("fill",
                            "ercot",
                            # scales::manual_pal(ercot_palette_wo_contrast, ...))
                            ercot_pal2(), ...)
  }

