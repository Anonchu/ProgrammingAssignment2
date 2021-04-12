## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
#makeCacheMatrix isused for creating a new matrix that is used for caching its inverse.
makeCacheMatrix <- function(x = matrix()){
      a <- NULL
      set <- function(z){
            a <<- z
            inv <<- NULL
      }
      get <- function() {x}
      setInverse <- function (inverse) {a <<- inverse}
      getInverse <- function() {inv}
      list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}

cacheSolve <- function(x, ...){
      a <- x$getInverse()
      if(!is.null(inv)){
        message("getting cached data")
        return(inv)
      }
      data <- x$get()
      inv <- solve(data, ...)
      x$setInverse(inv)
      inv
}


## Write a short comment describing this function
##used for data cache

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
