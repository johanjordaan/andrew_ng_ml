import Data.Matrix

theta = fromList 2 1 [2, 2]
theta' = fromList 2 1 [1,1]
x = fromLists [ [1,2], [3,5] ]

y = x * theta
y' = x * theta'


mapCol (\_ x->x^2) 1 (y-y')
