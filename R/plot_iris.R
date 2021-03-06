#' Plot mean sepal length by species
#'
#' @param size the size of the points
#'
#' @return a ggplot
#' @export
#'
#' @examples
#'
#' plot_iris()
#'
plot_iris <- function(size = 2) {
  iris %>%
    dplyr::group_by(Species) %>%
    dplyr::summarize(mean_sepal_length = mean(Sepal.Length)) %>%
    ggplot2::ggplot(ggplot2::aes(mean_sepal_length, Species)) +
    ggplot2::geom_point(size = 2)
}

