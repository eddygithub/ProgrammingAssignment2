## Put comments here that give an overall description of what your
## functions do

## create a matrix and cache the matrix's value

makeCacheMatrix <- function(x = matrix()) {
	inverseVal <<- NULL
	set <- function(y){
		x <- y
		m <<- NULL
	}
	get <- function() x
	setInverse <- function(val) inverseVal <<- val
	getInverse <- function() inverseVal
	list(set=set, get=get, setInverse=setInverse, getInverse=getInverse) 
}


## retrieve the cached inverse of matrix X, or recompute the inverse value
cacheSolve <- function(x, ...) {
	inverseVal <- x$getInverse()
	if(!is.null(inverseVal)){
		message("getting cached inverse value")
		return(inverseVal)
	}
	
	data <- x$get()
	inverseVal <- solve(data) 
	x$setInverse(inverseVal)
	inverseVal
}
