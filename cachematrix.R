## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}

#### an overall description 

makeCacheMatrix <- function(x=matrix()){
  inv<- NULL   ## this will store the cached inverse.
  set <- function(y){
    x<<-y     ## set new matrix.
    inv <- NULL  ## clear cache when matrix changes.
  }
  
  get <- function()x    ## return the matrix.
  setinverse <- function(inverse)inv <<- inverse ## cache the inverse.
  getinverse <- function()inv ## get cached inverse.
  
  list(set=set,
       get=get,
       setinverse=setinverse,
       getinverse=getinverse)
    }

cacheSolve <- function(x, ...){
  inv <- x$getinverse() ## try to get cached inverse.
if(!is.null(inv)) {     ##  if cache exist.
    message("getting cache data")
    (inv)    ## return it , skip computation.
  }
  
  data <- x$get()    ## get the matrix.
  inv <- solve(data, ...)    ## compute inverse.
  x$setinverse(inv)    ## cache it.
  inv       ## return inverse
}


