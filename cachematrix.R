## Put comments here that give an overall description of what your
## functions do

##The following codes can create a special object which has the capacity of storing a matrix

CreateCacheMatrix <- function(x = matrix())
    inv <- NULL
    set <- function(y) {
      x <<- y
      inv <<- NULL
    }
    get <- function() x
    setInv <- function(inverse) inv <<- inverse
    getInv <- function() inv
    list(set = set,
         get = get,
         setInv = setInverse,
         getInv = getInverse)

## The following function can calculate the value of the inverse of the special matrix

CasheSolving <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
inv <- x$getInverse()
if (!is.null(inv)) {
  message("getting cached data")
  return(inv)
}
mat <- x$get()
inv <- solve(mat, ...)
x$setInv(inv)
inv
}
