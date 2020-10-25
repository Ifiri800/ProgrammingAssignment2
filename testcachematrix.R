my_matrix <- makeCacheMatrix(matrix(1:4, 2,2))
my_matrix$get()
cacheSolve(my_matrix)

output
> my_matrix$get()
      [,1] [,2]
[1,]   -2   3
[2,]   2    4

> cacheSolve()
     [1,]  [,2]
[1,]  -2    1.5
[2,    1    -0.5