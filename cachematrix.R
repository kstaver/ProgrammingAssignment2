## Our Week 3 assignment was to design two functions, makeCacheMatrix and
## cacheSolve, to better understand how to create and manipulate a matrix in R.
## Author: Kendra Staver
## Date: 3/7/2021

## Create a matrix of nrows and ncols. Define functions that: display the matrix,
## set the inverse of the matrix, and display the inverse of the matrix.
makeCacheMatrix <- function(x = matrix()){
  invv <- NULL
  set <- function(y){
    x <<- y
    invsample <<- NULL
  }
  get <- function() {x}
  setInverse <- function(inverse) {inv <<- inverse}
  getInverse <- function(){inv}
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}

## Calculate the inverse of the matrix made in makeCacheMatrix. Return the inverse
## matrix.
cacheSolve <- function(x, ...){

  inv <- x$getInverse()
  if(!is.null(inv)){
    message("getting cached data")
    return(inv)
  }
  matrixData <- x$get()
  inv <- solve(matrixData, ...)
  x$setInverse(inv)
  inv
}
