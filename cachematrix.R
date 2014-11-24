## Put comments here that give an overall description of what your
## functions do

## APOLOGIES: Didn't have time to test and complete.....

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y) {
        x <<- y
        m <<- NULL
    }
    get <- function() x
    setinverse <- function(solve) m <<-solve
    getinverse <- function() m
    list(set = set, get = get,
            setinverse = setinverse,
            getinverse = getinverse
         )

}


##  APOLOGIES: Didn't have time to test and complete.....

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    m <- x$getInverse()
    if(!is.null(m)) {
        message("getting cached inversion")
        return(m)
    }
    data <- x$get()
    m <- solve(data, ...)
    x$setinverse(m)
    m
}


