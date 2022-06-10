## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

        inv <- NULL
        set <- function(y) {
        x <<- y # nolint
        inv <<- NULL
        }
        setinv <- function(inverse) inv <<- inverse
        getinv <- function() inv
        list(set = set, get = get, setinv = setinv, getinv = getinv)
}


##set input to x, creaed a null variable inv and then created
## list object that contains the original matrix and the cached inverse

cacheSolve <- function(x, ...) { # nolint    
         s <- x$getsolve()
        if(!is.null(s))  {
        message("getting inversed matrix")
        return(s)
        }
        data <- x$get()
        s <- solve(data, ...)
        x$setsolve(s) s
        
}
        ## Return a matrix that is the inverse of 'x'