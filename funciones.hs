fizzBuzz xs = [if mod x 3 == 0 && mod x 5 == 0 then "fizzbuzz" else if mod x 3 == 0 then "fizz" else if mod x 5 == 0 then "buzz" else " "| x <- xs]

--dando un tipo explícito a la función
limpiaMinus :: [Char] -> [Char]
limpiaMinus xs = [x | x <- xs, elem x ['A'..'Z']]

fizzBuzz' xs = zip xs (fizzBuzz xs)

--triangulos cuyos lados miden menos que 10 y además son rectos
--lado b < c, lado a < b
triangles = [ (a,b,c) | c <- [1..30], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2 ]

--el tipo que devuelve la función es el último, todos los anteriores son parámetros
sumaTresNumeros :: Int -> Int -> Int -> Int
sumaTresNumeros x y z = x + y + z
