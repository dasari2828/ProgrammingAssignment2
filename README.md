### Inverse of a Matrix. Caching for Performance

##R Programming Assignment 2

# Create a Square Matrix
# Summarize it to get the list of functions in the Matrix
# Cache the Matrix and Show the Solution

cacheIt <- makeCacheMatrix();
summary(cacheIt);
                Length Class  Mode    
retrieveMatrix  1      -none- function
setMatrix       1      -none- function
inverseCache    1      -none- function
retrieveInverse 1      -none- function

# retrieveMatrix:- Will return the matrix
# setMatrix:- Will set the data in the matrix
# Inverse Cache:- Will set the new data to the Cache and Performs the Inverse
# Retrieve Inverse:- Will retrieve the cached Inverse Matrix.

cacheIt$setMatrix(matrix(c(1,2,3,4), nrow=2, ncol=2));
cacheIt$retrieveMatrix();
cacheSolve(cacheIt);

## Testing Results

# > cacheIt$setMatrix(matrix(c(1,2,3,4), nrow=2, ncol=2));
# > cacheIt$retrieveMatrix();
#     [,1] [,2]
# [1,]    1    3
# [2,]    2    4
# > cacheSolve(cacheIt);
#     [,1] [,2]
# [1,]   -2  1.5
# [2,]    1 -0.5
# > 

