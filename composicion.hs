collatz :: (Integral a) => a -> [a]
collatz 1 = [1]
collatz n
    | even n =  n:collatz (n `div` 2)
    | odd n  =  n:collatz (n*3 + 1)

--qué números producen una lista mayor a X pasos
-- masLargasDeX x = [head x | x <- filter (\xs -> length xs > x) (map collatz [1..100])]

masLargasDeX x = [head x | x <- filter (length . >) (map collatz [1..100])]
