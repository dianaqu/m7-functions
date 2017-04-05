# Exercise 2: writing and executing functions (II)

# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"

CompareLength <- function(a, b) {
  result <- length(a) - length(b)
  return (paste('The difference in lengths is', abs(result)))
}

# Pass two vectors of different length to your `CompareLength` function
a <- c(1,2)
b <- c(3,4,5,6)

# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"

DescribeDifference <- function(a,b) {
  result <- length(a) - length(b)
  if (result > 0) {
    return (paste('Your first vector is longer by', abs(result), 'elements'))
  } else if (result < 0) {
    return (paste('Your second vector is longer by', abs(result), 'elements'))
  }
  return (result)
}

# Pass two vectors to your `DescribeDifference` function


### Bonus ###

# Rewrite your `DescribeDifference` function to tell you the name of the vector which is longer


DescribeDifference <- function(a,b) {
  diff <- length(a) - length(b)
  if(diff > 0) {
    vector.name <- deparse(substitute(a))
    sentence <- paste('Vector', vector.name, 'is longer by', diff, 'elements')
  } else {
    vector.name <- deparse(substitute(b)) # deparse turn it into vector.
    sentence <- paste('Vector', vector.name, 'is longer by', -diff, 'elements')
  }
  return(sentence)
}
x <- 1:15
y <- 9:170
DescribeDifference(x, y)