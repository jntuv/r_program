# api.R
#* @apiTitle Example Plumber API

#* Add two numbers
#* @param a First number
#* @param b Second number
#* @get /add
function(a, b) {
  a <- as.numeric(a)
  b <- as.numeric(b)
  list(result = a + b)
}
