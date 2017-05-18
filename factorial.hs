factorial :: Integer -> Integer
factorial n = product [1..n]

factoriales :: [Integer]-> [Integer]
factoriales xs = [factorial x | x <- xs]

--recursivo y usando ajuste de patrones
factorialR :: (Integral a) => a -> a
factorialR 0 = 1
factorialR n = n * factorialR (n - 1)
