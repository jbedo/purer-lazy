list(
  defer = function(thunk) {
    v <- NULL
    if (is.na(thunk)) {
      return(v)
    }
    v <- thunk()
    thunk <- NA
    v
  },
  force = function(l) l()
)
