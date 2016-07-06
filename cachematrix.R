## Put comments that give an overall description of functions do
## Functions that cache the inverse of a matrix
## Write a short comment describing this function
sapplyMakeCacheMatrix <- function(x=matrix){
  ## set the matrix
  ## get the matrix
  ## set the inverse
  ## get the inverse
  inv <- NULL
  set <- function(y){
    x <<- y
  ## assign a value to an object in an environment
    inv <<- NULL
  }
  get <- function()x
  setInverse <- function(inverse) inv <<- inverse
  getInverse <- function() inv
  list (set=set, get=get, setInverse=setInverse, getInverse=getInverse)
}


## Write a short commnet describing this function
## This function computes the inverse of the special "matrix" created by makeCache Matrix above
cacheSolve <- function(x, ...){
  inv <- x$getInverse()
  if(!is.null(inv)){
  ## get it from the cache and skips the computation
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data, ...)
  ## sets the value of the inverse in the cache via the setInverse function
  x$setInverse(inv)
  inv
}
