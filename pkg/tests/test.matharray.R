require(xtable)
V <- matrix(c(1.140380e-03,  3.010497e-05,  7.334879e-05,
              3.010497e-05,  3.320683e-04, -5.284854e-05,
              7.334879e-05, -5.284854e-05,  3.520928e-04), nrow = 3)
V
class(V) <- c("xtableMatharray")
class(V)

mth <- xtable(V)
str(mth)
mth

tbl <- xtable(V, display = rep("E", 4))
str(tbl)
tbl

V <- matrix(c(1.140380e-03,  3.010497e-05,  7.334879e-05,
              3.010497e-05,  3.320683e-04, -5.284854e-05,
              7.334879e-05, -5.284854e-05,  3.520928e-04), nrow = 3)
V
mth <- xtable(V, display = rep("E", 4))
class(mth)
mth
class(mth) <- c("xtableMatharray")
mth
print(mth)
print.xtableMatharray(xtable(V, display = rep("E", 4)))
class(mth) <- c("xtableMatharray")
mth

V <- matrix(c(1.140380e-03,  3.010497e-05,  7.334879e-05,
              3.010497e-05,  3.320683e-04, -5.284854e-05,
              7.334879e-05, -5.284854e-05,  3.520928e-04), nrow = 3)
V

print.xtableMatharray(xtable(V),
                      format.args = list(display = rep("E", 4)))
print.xtableMatharray(xtable(V),
                      format.args = list(digits = 6))

