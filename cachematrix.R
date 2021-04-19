## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##Crea una matrix inversa que puede almacenarse en cache
makeCacheMatrix <- function(x = matrix()) 
  {
  j <- NULL
  
  ##Methods SET and GET to establish or recover the matrix value.
  set <- function( matrix ) {
    m <<- matrix
    j <<- NULL
  }
  get <- function() {
    m
  }
  
  ##methods to set or get the inverse
  setInverse <- function(inverse) {
    j <<- inverse
  }
    getInverse <- function() {
    j
  }
    
  ##It  returns the list of operations available.  
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) 
  {
  k <- x$getInverse()
  if(!is.null(k))
    {
    return(k)
  }
  mat <- x$get()
  ##Calculates the inverse of the indicated matrix.
  k <- solve(mat,...)
  x$setInverse(k)
  k
  
}
