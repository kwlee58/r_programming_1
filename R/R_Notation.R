## read.csv
read.csv("./data/cards.csv")
## 아래 코드를 실행하면 R 4.0.0 버전 이후로 달라진 것을 파악할 수 있습니다. 
deck <- read.csv("./data/cards.csv")
str(deck)
deck <- read.csv("./data/cards.csv", stringsAsFactors = TRUE)
str(deck)
deck <- read.csv("./data/cards.csv")
## character 로 다시 읽었습니다.
head(deck)
## Positive Integers
deck[1, 1]
deck[1, 1:3]
new <- deck[1, 1:3]
new
vec <- c(6, 1, 3, 6, 10, 5)
vec[1:3]
vec[c(2, 4, 6)]
str(deck[1, 1])
str(deck[1, 1, drop = FALSE])
str(deck[1, 1:3])
str(deck[1:3, 1])
str(deck[1:3, 1, drop = FALSE])
## Negative Integers
deck[-1, 1:3]
deck[-(2:52), 1:3]
## Blank Spaces
deck[1, ]
deck[ , 1]
deck[ , 1, drop = FALSE]
## Logical Values
deck[1, c(TRUE, TRUE, FALSE)]
rows <- c(TRUE, rep(FALSE, 51))
deck[rows, ]
## Names
deck[1, c("face", "suit", "value")]
deck[ , "value"]
deck[ , "value", drop = FALSE]
deal <- function(cards) { 
  cards[1, ]
  }
deal(deck)
deck2 <- deck[1:52, ]
head(deck2)
deck2 <- deck[52:1, ]
head(deck2)
deck3 <- deck[c(2, 1, 3:52), ]
head(deck3)
random <- sample(1:52, size = 52)
random
deck4 <- deck[random, ]
head(deck4)
shuffle <- function(cards) {
  random <- sample(1:52, size = 52)
  cards[random, ]
}
deal(deck)
deck2 <- shuffle(deck)
deal(deck2)
## Dollar Signs and Double Brackets
str(deck)
deck$value
mean(deck$value)
median(deck$value)
lst <- list(numbers = c(1, 2), logical = TRUE, strings = c("a", "b", "c"))
lst
lst[1]
lst$numbers
lst[[1]]
lst["numbers"]
lst[["numbers"]]
