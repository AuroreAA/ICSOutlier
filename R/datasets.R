#' Production Measurements of High-Tech Parts
#'
#' The \code{HTP2} data set contains 457 high-tech parts designed for consumer
#' products characterized by 149 tests.
#' These tests are performed to ensure a high quality of the production.
#' All these 457 parts were considered functional and have been sold.
#' However the part 28 showed defects in use and was
#' returned to the manufacturer by the customer. Therefore this part
#' can be considered as outlier.
#'
#' @usage
#' data("HTP2")
#' 
#' @format A data frame with 457 rows and 149 variables V.1 - V.149, presenting
#' some collinearity issues.
#'
#' @source Anonymized data from a nondisclosed manufacturer.
"HTP2"


#' Production Measurements of High-Tech Parts
#'
#' The \code{HTP3} data set contains 371 high-tech parts designed for consumer
#' products characterized by 33 tests.
#' These tests are performed to ensure a high quality of the production.
#' All these 371 parts were considered functional and have been sold.
#' However the part 32 showed defects in use and was
#' returned to the manufacturer by the customer. Therefore this part
#' can be considered as outlier.
#'
#' @usage
#' data("HTP3")
#'
#'
#' @format A data frame with 371 rows and 33 variables V.1 - V.33,
#' presenting some approximate collinearity issues which may cause
#' some numerical inaccuracies.
#'
#' @source Anonymized data from a nondisclosed manufacturer.
#' 
#' @references 
#' Archimbaud, A., Drmac, Z., Nordhausen, K., Radojcic, U. and Ruiz-Gazen, A.
#' (2023) Numerical Considerations and a New Implementation for Invariant
#' Coordinate Selection. \emph{SIAM Journal on Mathematics of Data Science},
#' \bold{5}(1), 97--121. \doi{10.1137/22M1498759}.
#' 
#' @examples
#' # HTP3 data: the observation 32 is considered as outliers
#' data("HTP3")
#' outliers <- c(32)
#' boxplot(HTP3)
#' 
#' # Outlier detection using ICS
#' library(ICS)
#' out <- ICS_outlier(HTP3, ICS_algorithm = "QR",
#'                    method = "norm_test",
#'                    test = "agostino.test", level_test = 0.05,
#'                    level_dist = 0.01, n_dist = 50)
#' 
#' summary(out)
#' plot(out)
#' text(outliers, out$ics_distances[outliers], outliers, pos = 2, cex = 0.9, col = 2)
#' 
"HTP3"
