# WARNING - Generated by {fusen} from /dev/mrbma.Rmd: do not edit by hand

#' mrbma_nyholt_correct
#'
#' Perform empirical permutation to estimate p-values using the Nyholt procedure of effective tests to control the false discovery rate
#'
#' @return A [tibble][tibble::tibble-package]
#'
#' @noRd
mrbma_nyholt_correct <- function(mrbma_input, mrbma_output, empirical_p) {
  cor_beta <- cor(mrbma_input@betaX)

  p_nyholt <- empirical_p[, 2] * poolr::meff(cor_beta, method = "nyholt")
  for (i in 1:length(p_nyholt)) {
    if (p_nyholt[i] > 1) {
      p_nyholt[i] <- 1
    }
  }
  res <- cbind(mrbma_input@exposure, mrbma_output@BMAve_Estimate, empirical_p, p_nyholt)
  colnames(res) <- c("exposure", "mace", "mip", "p_val", "p_fdr", "p_nyholt")
  return(res)
}
