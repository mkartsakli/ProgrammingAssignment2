#makeCacheMAtrix function
makeCacheMatrix <- function(x = numeric()) {
#hold cashed value or null
#initially is set null as there is no cashed value         
          cache <- NULL
#store a matrix and then set cache as null
          setMatrix <- function(y) {
                     x <<- z
                     cache <<- NULL
            }
#return the stored matrix           
          getMatrix <- function() {
                     x
              }
#cache the given argument
           cacheInverse <- function(solve) {
                     cache <<- solve
              }
#get the cashed value
            getInverse <- function() {
                     cache
              }
#return a list whose each element is a function
            list(setMatrix = setMatrix, getMatrix = getMatrix, cacheInverse = cacheInverse, getInverse = getInverse)
}

#calculate the inverse of a matrix created with makeCacheMatrix
cacheSolve <- function(z, ...) {
#get the cashed value
            inverse <- z$getInverse()
#if there is a cashed value return it otherwise get the matrix,calculate the inverse and store it in the cashe
            if(!is.null(inverse)) {
                      message("getting cached data")
                      return(inverse)
              }
            data <- z$getMatrix()
          inverse <- solve(data)
          z$cacheInverse(inverse)
            inverse
  }
