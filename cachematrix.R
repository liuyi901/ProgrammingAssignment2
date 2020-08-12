## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix(sample(1:200,10),5,2)) {
      s <- NULL
      set <- function(y) {
      x <<- y
      s <<- NULL
  }
      get <- function() x
      setinversed <- function(inversed) s <<- inversed
      getinversed <- function() s
      list(set = set, get = get,
          setinversed = setinversed,
          getinversed = getinversed)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  s <- x$getinversed()
  if(!is.null(s)) {
    message("getting inversed matrix")
    return(s)
  }
  data <- x$get()
  s <- inversed(data, ...)
  x$setinversed(s)
  s
  ## Return a matrix that is the inverse of 'x'
}
