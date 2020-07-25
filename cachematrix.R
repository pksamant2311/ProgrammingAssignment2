## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

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


## Write a short comment describing this function

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

