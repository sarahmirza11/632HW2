#' Plot modern contraceptive use, mCPR, data and estimates
#'
#' @param dat A tibble which contains mCPR observations.
#' @param est A tibble which contains mCPR estimates.
#' @param iso_code Country iso code
#' @param CI Confidence intervals. Options are: 80, 95, or NA.
#'
#' @return A plot of mCPR of married women against time, in the indicated country, with the indicated confidence intervals. Dots represent observed data.
#' @export
#'
#' @examples plot_cp <- function(dat, est, iso_code, CI = 95) {}
#'
plot_cp <- function(dat, est, iso_code, CI = 95) {
  est <- est %>%
    filter(iso == iso_code)
  dat <- dat %>%
    rename(iso = "division_numeric_code") %>%
    filter(iso == iso_code)
  if (is.na(CI)) {
    est %>%
      ggplot() +
      geom_line(aes(x = Year, y = Median)) +
      geom_point(data = dat, aes(x = avg_year, y = mCPR * 100)) +
      labs(x = "Time",
           y = "Modern use (%)",
           title = est$`Country or area`[1])
  } else
    if (CI == 80) {
      est %>%
        ggplot() +
        geom_line(aes(Year, Median)) +
        geom_smooth(aes(Year, Median, ymax = U80, ymin = L80), stat = "identity") +
        geom_point(data = dat, aes(x = avg_year, y = mCPR * 100)) +
        labs(x = "Time",
             y = "Modern use (%)",
             title = est$`Country or area`[1])
    }
  else if (CI == 95) {
    est %>%
      ggplot() +
      geom_line(aes(Year, Median)) +
      geom_smooth(aes(Year, Median, ymax = U95, ymin = L95), stat = "identity") +
      geom_point(data = dat, aes(x = avg_year, y = mCPR * 100)) +
      labs(x = "Time",
           y = "Modern use (%)",
           title = est$`Country or area`[1])
  }
}
