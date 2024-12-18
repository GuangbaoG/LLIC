% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot_LLIC.R
\name{plot_LLIC}
\alias{plot_LLIC}
\title{advanced_plotting_LLIC for LLIC}
\usage{
plot_LLIC(X, Y, result)
}
\arguments{
\item{X}{Design matrix used in the LLIC analysis.}

\item{Y}{Random response vector of observed values used in the LLIC analysis.}

\item{result}{A list containing the results of the Laplace LIC analysis from the LLIC function.}
}
\value{
A list containing two `ggplot` objects:
\item{Actual_vs_Pred}{A scatter plot comparing the actual vs predicted values.}
\item{Coef}{A bar chart displaying the model's coefficients.}
}
\description{
This function visualizes the results of the LLIC analysis, including a comparison of actual and predicted values, and a bar chart of model coefficients.
}
\examples{

set.seed(12)
library(VGAM)
library(rlang)
library(dplyr)
library(ggplot2)
X <- matrix(data = sample(1:3, 1200 * 5, replace = TRUE), nrow = 1200, ncol = 5)
b <- sample(1:3, 5, replace = TRUE)
e <- rlaplace(1200, 0, 1)
Y <- X \%*\% b + e
alpha <- 0.05
K <- 10
result <- LLIC(X, Y, alpha, K)
plot_LLIC(X, Y, result)
plots <- plot_LLIC(X, Y, result)
print(plots$Actual_vs_Pred)
print(plots$Coef)

}
