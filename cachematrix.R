## Pair of functions that cache the inverse of a matrix
## Usage: Pass the result of a makeCacheMatrix call to cacheSolve 


#' Util function that set the matrix and the inverse in an environment
#' @param x an invertible matrix
#' examples


makeCacheMatrix <- function(x = matrix()) {
        
        j<- NULL
        set <- function(y){
                x<<-y
                j<<- NULL
        }
        
        get <- function(){
                x
        }
        
        setinv <- function(inv){
                j<<-inv
        }
        
        getinv <- function(){
                j
        }
        
        list(set=set, get=get, setinv=setinv, getinv=getinv)

}


#' Compute and cache the inverse of a matrix
#' @param x the result of a previous makeCacheMatrix call
#' @param ... additional arguments to pass to solve function
#' examples

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m<-x$getinv()
        
        if(!is.null(m)){
                print("Catched Data")
                return(m)
        }
        
        d1<-x$get()
        
        m<- solve(d1)
        
        x$setinv(m)
        
        m
}

