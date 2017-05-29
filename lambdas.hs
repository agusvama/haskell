--secuencia de Collatz
collatz :: (Integral a) => a -> [a]
collatz 1 = [1]
collatz n
    | even n =  n:collatz (n `div` 2)
    | odd n  =  n:collatz (n*3 + 1)

numLongCollatz :: Int
numLongCollatz = length (filter isLong (map collatz [1..100]))
    where isLong xs = length xs > 15

--qué números producen una lista mayor a X pasos
masLargasDeX x = [head x | x <- filter (\xs -> length xs > x) (map collatz [1..100])]

lambdaDeDosParametros xs ys= zipWith (\a b -> (a * b)) xs ys
