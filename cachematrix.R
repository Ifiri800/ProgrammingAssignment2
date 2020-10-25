## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## makecacheMatrix is a function which create a special matrix object that can 
## cache its inverse for the input, which is an invertible square matrix

makeCacheMatrix <- function(x = matrix()) {
inv <- NULL
set <- function(y) {
  x <<- y
  inv <<- NULL
}
get <- function()x
setinv <- function(inverse) inv<<- inverse
getinv <- function()inv
list(set = set, get = get, setinv = setinv, getinv = getinv)
}


## Write a short comment describing this function
## cacheSolve is a function which compute the inverse of the special matrix
## returned by makecacheMatrix above. 

cacheSolve <- function(x, ...){
 inv <- x$getinv()
 if(!is.null(inv)) {
   message("getting cached result")
return(inv)
 }
 data <- x$get()
 inv <- solve(data,...)
 x$setinv(inv)
 inv
}
         
