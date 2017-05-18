maximum' :: (Ord a) => [a] -> a
maximum' [] = error "lista vacia"
maximum' [x] = x
maximum' (x:xs) = max x (maximum' xs)
