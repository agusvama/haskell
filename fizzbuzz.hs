--dado un número entero positivo
--si es múltiplo de 3 -> "fizz"
--si es múltiplo de 5 -> "buzz"
--si es múltipli de ambos -> "fizzbuzz"
--default -> regresa el mismo número

fizzbuzz xs = [if mod x 3 == 0 && mod x 5 == 0 then "fizzbuzz" else if mod x 3 == 0 then "fizz" else if mod x 5 == 0 then "buzz" else show x| x <- xs]

fizzbuzzesNombres xs = zip xs (fizzbuzz xs)

fizzbuzz' x
  | mod x 3 == 0 && mod x 5 == 0 = "fizzbuzz"
  | mod x 3 == 0 = "fizz"
  | mod x 5 == 0 = "buzz"
  | otherwise = (show x)
  --en este caso, lo convertimos a cadena, en Haskell las listas solamente
  --se pueden hacer de elementos del mismo tipo
  --pero si sólo queremos saber si un número es fizz o buzz, no hay
  --necesidad de aplicar el show x

fizzbuzzes' xs = [fizzbuzz' x | x <- xs]
