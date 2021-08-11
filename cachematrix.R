## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

##This function creates a special "matrix" object that can cache its inverse
##It has the same structure as the "makeVector" function

makeCacheMatrix <- function(m = matrix()) {
  
  
  inv <- NULL
  
  set <- function(matrix){
    m <<- matrix
    inv <<- NULL
  }
  
  get <- function() {
    m
  }
  
  setinv <- function(inverse){
    inv <<- inverse
  }
  
  getinv <-function(){
    inv
  }
  
  list(set = set, get = get, setinv = setinv, getinv = getinv)  
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        
        inv <- x$getinv()
        
        if( !is.null(inv)){
                message("Cache result")
                return(inv)
        }
        
        data <- x$get()
        
        inv <- solve(data) 

        x$setinv(inv)
        
        inv
}
