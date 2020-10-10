## Hey there! I've created a function to solve the inverse matrix in the first part I put the constuction of the matrix and the forward the inverse by the solve function
## The program takes a variable that converts into matrix, in there define 3 subfunctions set, get and setinv, getinv. The following verifies the computation and show the result

## The subfunctions: set (set a matrix), get(get values) and setinv(set inverse values), getinv(get inverse values) 

makeCacheMatrix <- function(x = matrix()) {
        invmatx <- NULL
	set <- function(y){
		x <<- y
		invmatx <- NULL
	}
	get <- function(){
		x
	}
	setinv <- function(inverse){
		invmatx <<- inverse
	}
	getinv <- function() {
		invmatx
	}
	list(set = set, get = get, setinv = setinv, getinv = getinv)
}


## It verifies if the inverse values had calculated if this is correct launch a message, then the program evalues the inverse function by solve and show the result

cacheSolve <- function(x, ...) {
        invmatx <- x$getinv()
	if(!is.null(invmatx)){
		message('Getting cached data')
		return(inv)
	}
	matx <-  x$get()
	invmatx <- solve(matx, ...)
	x$setinv(invmatx)
	invmatx## Return a matrix that is the inverse of 'x'
}
