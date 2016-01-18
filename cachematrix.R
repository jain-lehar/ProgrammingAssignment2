## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  sol<-NULL
  set<-function(y)
  {
    x<<-y
    sol<<-NULL
  }
  get<-function() x
  setSolution <- function(solution) sol<<-solution
  getSolution <- function() sol
  list(set=set,get=get,setSolution = setSolution,getSolution = getSolution)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  sol <- x$getSolution()
  if(!is.null(sol))
  {
    message("getting cached data")
    return(sol);
  }
  mat <- x$get()
  sol<-solve(mat,...)
  x$setSolution(sol)
  sol
}
