collatz :: (Integral a) => a -> [a]
collatz 1 = [1]
collatz n
  | even n = n:collatz (div n 2)
  | odd n = n:collatz (n*3 + 1)

--regresa una lista, con aquellas x que terminan en menos de 15 pasos,
--para todos los números del 1 al 100
--para cada número del 1 al 100, qué secuencias tienen una longitud menor a 15
menosDe15Pasos = [x | x <- [1..100], length(collatz x) < 15]
