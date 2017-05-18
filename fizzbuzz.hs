fizzbuzz xs = [if mod x 3 == 0 && mod x 5 == 0 then "fizzbuzz" else if mod x 3 == 0 then "fizz" else if mod x 5 == 0 then "buzz" else show x| x <- xs]

fizzbuzzesNombres xs = zip xs (fizzbuzz xs)

fizzbuzz' x
  | mod x 3 == 0 
 && mod x 5 == 0 = "fizzbuzz"
  | mod x 3 == 0 = "fizz"
  | mod x 5 == 0 = "buzz"
  | otherwise = (show x)

fizzbuzzes' xs = [fizzbuzz' x | x <- xs]
