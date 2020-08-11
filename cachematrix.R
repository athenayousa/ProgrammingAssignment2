## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  s<-NULL
  set<-function(y){
    x<<-y
    s<<-NULL
  }
  get<-function() x
  set_Transpose<-function(Transpose) s<<-Transpose
  get_Transpose<-function() s
  list(set=set,get=get,set_Transpose=set_Transpose,get_Transpose=get_Transpose)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  s<-x$get_Transpose()
  if(!is.null(s)){
    message("get cached data")
    return(s)
  }
  data<-x$get()
  s<-t(data)
  x$set_Transpose(s)
  s
  
}


