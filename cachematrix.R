## Put comments here that give an overall description of what your
## functions do
## This is ProgrammingAssignment 2, wherein we create two functions. 
## The objective is to return the inverse of a matrix. 
## However, since inverses can be expensive, we return a cache of the inverse...
## in case the matrix inverse has already been calculated and the matrix remained unchanged. 


## makeCacheMatrix replicates the functionality of MakeVector function, as given in the example. 
## Admitedly, I have copied and pasted the example function and made just some minor modifications. 
## I really need to understand more why this works! I tested with some sample square matrices. 
## For purposes of this assignment, I have submitted this, since it works. 
## Still, I need to figure out why this works. 

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setsolve <- function(solve) m <<- solve
  getsolve <- function() m
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
}

## cacheSolve replicates the functionality of cachemean function, as given in the example. 
## Admitedly, I have copied and pasted the example function and made just some minor modifications. 
## I really need to understand more why this works! I tested with some sample square matrices. 
## For purposes of this assignment, I have submitted this, since it works. 
## Still, I need to figure out why this works. 

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  m <- x$getsolve()
    if(!is.null(m)) {
      message("getting cached data")
      return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setsolve(m)
  m
}
