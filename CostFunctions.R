mse <- function(y_hat, y) {
  mean((y_hat - y) ^ 2)
}

rmse <- function(y_hat, y) {
  sqrt(mse(y_hat, y))
}

binaryClassDeviance <- function(p_hat, y) {
  - 2 * (y * log(p_hat) + (1 - y) * log(1 - p_hat))
}
