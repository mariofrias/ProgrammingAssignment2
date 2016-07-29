## Put comments here that give an overall description of what your
## functions do .. This function creates a special "matrix" object that can cache its inverse.

## Write a short comment describing this function
##set the value of the matrix
## get the value of the matrix
## set the value of the solve
## get the value of the solve


makeCacheMatrix <- function(x = matrix()) {
	 mat <- NULL
        set <- function(y) {
                x <<- y
                mat <<- NULL
        }
        get <- function() x
        setsolve <- function(solve) mat <<- solve
        getsolve <- function() mat
        list(set = set, get = get,
             setsolve = setsolve ,
             getsolve = getsolve )
}


## Write a short comment describing this function
## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. If the inverse has already been calculated (and the matrix has not changed), 
##  then the cachesolve should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	 mat <- x$getsolve()
        if(!is.null(mat)) {
                message("getting cached data")
                return(mat)
        }
        data <- x$get()
        mat <- solve(data, ...)
        x$setsolve(mat)
        mat

}
