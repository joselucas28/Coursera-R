myfunction <- function() {
  x <- rnorm(100)
  mean(x)
}

second <- function(x) {
  x + rnorm(lenght(x))
}

m <- matrix(1:6, nrow = 2, ncol = 3)
print(m)

m <- 1:10
print(m)
dim(m) <- c(2, 5)
print(m)

x <- 1:3
y <- 10:12
d <- cbind(x, y)
print(d)
e <- rbind(x, y)
print(e)

x <- factor(c("yes", "no", "yes", "yes", "no"))
print(x)
table(x)
unclass(x)

t <- data.frame(foo = 1:4, bar = c("T", "T", "F", "T"))
print(t)
row.names(t) <- c("Julio", "Marcos", "Maria", "Joäo")
print(t)

y <- data.frame(a=1, b="a")
dput(y)
dput(y, file = "y.R")
new_y <- dget("y.R")
print(new_y)

x <- "foo"
y <- data.frame(a=1, b="a")
dump(c("x", "y"), file = "data.R")
rm(x, y)
source("data.R")
print(y)
print(x)

con <- url("facebook.com", "r")
x <- readLines(con)
head(x)
x <- 1:4; y <- 6:9
x > y

x <- 4 
class(x)

x <- list(2, "a", "b", TRUE)
x[[2]]

x <- 1:4; y <- 2:3
 r <- x+y
 class(r)
 
x <- c(17, 14, 4, 5, 13, 12, 10)
x[x > 10] <- 4
print(x)

x <- read.csv("hw1_data.csv")
rr <- c(x[32:61,"Temp"])
print(na.omit(rr))
mean(na.omit(rr))
rr_order <- sort(na.omit(rr), decreasing = FALSE, na.last = T)
print(rr_order)
var(rr_order)
sd(rr_order)


x <- read.csv("hw1_data.csv")
rr <- is.na(x)
summary(rr)
print(is.na(x))

x <- read.csv("hw1_data.csv")
print(x[47, "Ozone"])

x <- read.csv("hw1_data.csv")
r <- na.omit(x)
mean(r[, "Ozone"])

x <- read.csv("hw1_data.csv")
r <- na.omit(x)
subset_s <- subset(r, Ozone > 31 & Temp > 90)
solar_r <- c(subset_s[, "Solar.R"])
mean(solar_r)

x <- read.csv("hw1_data.csv")
i <- nrow(x)
print(i)

x <- 4L
print(class(x))

x <- c(4, "a", TRUE)
print(class(x))