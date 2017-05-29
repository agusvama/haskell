sum' :: (Num a) => [a] -> a
sum' xs = foldl (\acc x -> acc + x) 0 xs

sum'' :: (Num a) => [a] -> a
sum'' = foldl (+) 0

--ya existe un reduce de suma y multiplicación, con el valor inicial 0 y 1 respectivamente
--sum
--product
--
contar xs = foldl (\x y -> succ x) 0 xs
todosPositivos xs = foldl (\x y -> x && (y > 0)) True xs

--map a través de fold
mapFold xs = reverse $ foldl (\x y -> (y * 2):x) [] xs

--para ver el progreso del fold se usa scanl y scanr
contar' xs = scanl (\x y -> succ x) 0 xs
todosPositivos' xs = scanl (\x y -> x && (y > 0)) True xs
