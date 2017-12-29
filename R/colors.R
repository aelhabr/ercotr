


#' @description Used to change the "luminance" of colors for `get_ercot_palette_scaled()`,
#' (athough it really is a general function that can be used for other purposes as well).
#' @param r red number, Max: 255
#' @param g green number Max: 255
#' @param b blue number Max: 255
#' @details See `get_ercot_palette()` and `get_ercot_palette_scaled()`.
#' @rdname get_ercot_palette
#' @export
scale_color <- function(r, g, b, max = 255, scale = 1) {
  # Not sure how this works if 'max' doesn't appear to be a valid
  # argument for the grDevices::rgb() function (but 'maxColorValue' is).
  grDevices::rgb(r, g, b, max = ceiling((2 * max) - (max * scale)))
}

#' @description Provides greater customability than `get_ercot_palette()`.
#' @details See `get_ercot_palette()`.
#' @param max  max number, Default: 255
#' @param scale number between 0 and 1, Default: 1
#' @rdname get_ercot_palette
#' @export
get_ercot_palette_scaled <-
  function(num_colors = 12,
           max = 255,
           scale = 1,
           with_contrast = TRUE) {
    c_black <- scale_color(0, 0, 0, max, scale)
    c_white <- scale_color(1, 1, 1, max, scale)

    c_turquoise <- scale_color(0, 174, 199, max, scale)
    c_gray <- scale_color(91, 103, 112, max, scale)
    c_green <- scale_color(38, 208, 124, max, scale)
    c_blue <- scale_color(0, 56, 101, max, scale)
    c_purple <- scale_color(104, 91, 199, max, scale)
    c_magenta <- scale_color(138, 12, 88, max, scale)

    c_yellow <- scale_color(255, 209, 0, max, scale)
    c_orange <- scale_color(255, 130, 0, max, scale)

    c_turquoise_light_2 <- scale_color(153, 223, 233, max, scale)
    c_turquoise_light_3 <- scale_color(38, 208, 124, max, scale)
    c_green_2 <- scale_color(75, 255, 0, max, scale)

    c_1 <- c_turquoise
    c_2 <- c_gray
    c_3 <- c_green
    c_4 <- c_blue
    c_5 <- c_purple
    c_6 <- c_magenta
    c_7 <- c_yellow
    c_8 <- c_orange
    c_9 <- c_turquoise_light_2
    c_10 <- c_green_2
    c_11 <- c_white
    c_12 <- c_black

    if (with_contrast == FALSE) {
      pal <-
        c(c_1, c_2, c_3, c_4, c_5, c_6, c_7, c_8, c_9, c_10, c_11, c_12)
    } else {
      pal <-
        c(c_1, c_6, c_3, c_4, c_2, c_5, c_8, c_7, c_9, c_10, c_11, c_12)
    }
    pal[1:num_colors]
  }


#' @title get_ercot_palette
#' @description Used for `ercot_pal()`.
#' @param num_colors number between 0 and 12 Default: 12
#' @param with_contrast boolean, Default: TRUE
#' (TRUE provides maroon as secondary color, FALSE provides grey
#' as secondary color)
#' @return A character vector with colors.
#' @rdname get_ercot_palette
#' @export
#' @importFrom grDevices rgb
get_ercot_palette <-
  function(num_colors = 12,
           with_contrast = TRUE) {
    c_black <- grDevices::rgb(0, 0, 0, max = 255)
    c_white <- grDevices::rgb(1, 1, 1, max = 255)

    c_turquoise <- grDevices::rgb(0, 174, 199, max = 255)
    c_gray <- grDevices::rgb(91, 103, 112, max = 255)
    c_green <- grDevices::rgb(38, 208, 124, max = 255)
    c_blue <- grDevices::rgb(0, 56, 101, max = 255)
    c_purple <- grDevices::rgb(104, 91, 199, max = 255)
    c_magenta <- grDevices::rgb(138, 12, 88, max = 255)

    c_yellow <- grDevices::rgb(255, 209, 0, max = 255)
    c_orange <- grDevices::rgb(255, 130, 0, max = 255)

    c_turquoise_light_2 <- grDevices::rgb(153, 223, 233, max = 255)
    c_turquoise_light_3 <- grDevices::rgb(38, 208, 124, max = 255)
    c_green_2 <- grDevices::rgb(75, 255, 0, max = 255)

    c_1 <- c_turquoise
    c_2 <- c_gray
    c_3 <- c_green
    c_4 <- c_blue
    c_5 <- c_purple
    c_6 <- c_magenta
    c_7 <- c_yellow
    c_8 <- c_orange
    c_9 <- c_turquoise_light_2
    c_10 <- c_green_2
    c_11 <- c_white
    c_12 <- c_black

    c_1 <- c_turquoise
    c_2 <- c_gray
    c_3 <- c_green
    c_4 <- c_blue
    c_5 <- c_purple
    c_6 <- c_magenta
    c_7 <- c_yellow
    c_8 <- c_orange
    c_9 <- c_turquoise_light_2
    c_10 <- c_green_2
    c_11 <- c_white
    c_12 <- c_black

    if (with_contrast == FALSE) {
      pal <-
        c(c_1, c_2, c_3, c_4, c_5, c_6, c_7, c_8, c_9, c_10, c_11, c_12)
    } else {
      pal <-
        c(c_1, c_6, c_3, c_4, c_2, c_5, c_8, c_7, c_9, c_10, c_11, c_12)
    }
    pal[1:num_colors]
  }
