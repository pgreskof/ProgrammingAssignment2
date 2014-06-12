## Put comments here that give an overall description of what your
## functions do

## This function does a few things: Set a matrix, get a matrix, get the inverse of it, and set the inverse of it

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setmean <- function(inverse) m <<- inverse
        getmean <- function() m
        list(set = set, get = get,
                setmean = setmean,
                getmean = getmean)
}


## This function checks to see if an inverse is cached, and if not, calculates the inverse, and returns the inverse of the matrix
## It also checks to make sure the data hasn't changed.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getmean()
        if(!is.null(m)) {
                message("getting cached data")
        return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setmean(m)
        m
}
