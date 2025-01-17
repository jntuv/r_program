# Load plumber
#* @apiTitle Example API

#* Add two numbers
#* @param a First number
#* @param b Second number
#* @get /add
function(a, b) {
  a <- as.numeric(a)
  b <- as.numeric(b)
  return(list(result = a + b))
}

#* Multiply two numbers
#* @param x First number
#* @param y Second number
#* @post /multiply
function(x, y) {
  x <- as.numeric(x)
  y <- as.numeric(y)
  return(list(result = x * y))
}
