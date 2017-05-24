quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x:xs) =
  let menores = quicksort [a | a <- xs, a <= x]
      mayores = quicksort [a | a <- xs, a > x]
  in  menores ++ [x] ++ mayores

quicksort' :: (Ord a) => [a] -> [a]
quicksort' [] = []
quicksort' (x:xs) =
  let menores = quicksort (filter (<= x) xs)
      mayores = quicksort (filter (> x) xs)
  in  menores ++ [x] ++ mayores
