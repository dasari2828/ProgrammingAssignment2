## Matrix inversion is usually a costly computation and their may be some benefit to 
## caching the inverse of a matrix rather than compute it repeatedly.

##The below functions will cache the inverse of a matrix.

makeCacheMatrix <- function(x = numeric()) {
    
    cacheMatrix<- NULL
    #Returns the Matrix
    retrieveMatrix<-function()x
    
    #Save the Matrix
    setMatrix<-function(saveMatrix){
        x<<-saveMatrix
        cacheMatrix<-NULL
    }
    
    #Inverse Cache
    inverseCache<-function(solve){
        cacheMatrix<-solve
    }
    
    #Retrieve from Cache
    retrieveInverse<- function(){
        cacheMatrix
    }
    
    #Returns the Custom List
    list(retrieveMatrix=retrieveMatrix, setMatrix=setMatrix, inverseCache=inverseCache, 
         retrieveInverse=retrieveInverse)
    
}


## This function will first look for the values in the matrix, and if nothing has changed it
## will cache and return the matrix.
## If it changes, it will update the cache and compute the inverse and returns it.

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    inverseMatrix<-x$retrieveInverse()
    if(!is.null(inverseMatrix)){
        return (inverseMatrix)
    }
    mat<-x$retrieveMatrix()
    inverseMatrix<-solve(mat)
    x$inverseCache(inverseMatrix)
    
    inverseMatrix
    
}
