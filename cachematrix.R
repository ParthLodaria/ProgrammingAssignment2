## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
inv <- NULL
set <- function(y)  
{
  x <<- y
  inv <<- NULL
}
get <- function()x
setinverse <- function(inverse) inv <<- inverse   ##setting the value of matrix inverse
getinverse <- function() inv                      ##getting the value of matrix inverse
list(set = set, get = get,
     setinverse = setinverse,
     getinverse = getinverse)
}




}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
inv <- x$getinverse()
if(!is.null(inv))                          ##If this condition is TRUE then we have a cached value of matrix inverse
{
  message("getting cached data")
  return(inv)
}
data <- x$get()
inv <- solve(data,...)  ##calculating matrix inverse
x$setinverse(inv)
inv
}
