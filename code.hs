term :: (Num a, Integral b)=> (a, a, b) -> a
term (a, b, c) = a * b^c

polynomial :: Num a => [a] -> [a] -> [a]
polynomial theta x = map term (zip3 theta x [0..(length x)-1])

sqr_diff :: Fractional a => [a] -> [a] -> [a]
sqr_diff x y = map (\(x,y)-> (x-y)^2) (zip x y)
sum_sqr_diff :: Fractional a => [a] -> [a] -> a
sum_sqr_diff x y = foldl (+) 0 (sqr_diff x y)
avg_sum_sqr_diff :: Fractional a => [a] -> [a] -> a
avg_sum_sqr_diff x y = 1/(2*(fromIntegral(length x))) * (sum_sqr_diff x y)

cost :: Fractional a => ([a]->[a]->[a]) -> [a] -> [a] -> [a] -> a
cost f theta x y = avg_sum_sqr_diff (f theta x) y





--polynomial :: () => [a] -> [a] -> [Char]
--polynomial theta x
--  | length theta > length x = "More Theta"
--  | length theta < length x = "More x"
--  | otherwise = "Same amounts"
