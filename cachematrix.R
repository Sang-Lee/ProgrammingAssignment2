## This is assignment 2.

## This creates a matrix to hold its inverse

makeCacheMatrix <- function(x = matrix()) {
  
  inv = NULL
  set = function(z){
    
    x <<- z
    inv <<- NULL
  }
  
  get = function() x
  setinv = function (inverse) inv <<- inverse
  getinv = function () inv
  list(set=set, get=get, setinv=setinv, getinv=getinv)
  
  

}


## This calculates the inverse of the matrix in makeCacheMatrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
  inv = x$getinv()
  
  mat.data = x$get()
  inv = solve(mat.data,...)
  
  x$setinv(inv)
  return(inv)
  
  
}
