-- Tests and examples
data MaybeInt = NoInt | JustInt Int
p (NoInt) = "None"
p (JustInt i) = show(i)
