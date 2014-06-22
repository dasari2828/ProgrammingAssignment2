##Inverse of a Matrix. Caching for Performance

# R Programming Assignment 2

 Create a Square Matrix <br>
 Summarize it to get the list of functions in the Matrix <br>
 Cache the Matrix and Show the Solution <br>
<br>
cacheIt <- makeCacheMatrix();<br>
summary(cacheIt);<br>
                Length Class  Mode   <br>
retrieveMatrix  1      -none- function <br>
setMatrix       1      -none- function <br>
inverseCache    1      -none- function <br>
retrieveInverse 1      -none- function <br>

 retrieveMatrix:- Will return the matrix <br>
 setMatrix:- Will set the data in the matrix <br>
 Inverse Cache:- Will set the new data to the Cache and Performs the Inverse <br>
 Retrieve Inverse:- Will retrieve the cached Inverse Matrix. <br>

cacheIt$setMatrix(matrix(c(1,2,3,4), nrow=2, ncol=2)); <br>
cacheIt$retrieveMatrix(); <br>
cacheSolve(cacheIt); <br>

## Testing Results

 > cacheIt$setMatrix(matrix(c(1,2,3,4), nrow=2, ncol=2)); <br>
 > cacheIt$retrieveMatrix(); <br>
     [,1] [,2] <br>
 [1,]    1    3 <br>
 [2,]    2    4 <br>
 > cacheSolve(cacheIt); <br>
     [,1] [,2] <br>
 [1,]   -2  1.5 <br>
 [2,]    1 -0.5 <br>
 > <br>

