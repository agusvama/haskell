--intensional -> proviene de la lógica intensional
--es un sistema formal donde los aspectos intensionales del lenguaje pueden ser representados
--[cómo quieres ingresar x a la lista | x provienede (<-) xs, predicado, predicado, ... predicado]
ghci> [x*2 | x <- [1..10]]
[2,4,6,8,10,12,14,16,18,20]

ghci> [x*2 | x <- [1..10], x*2 >= 12]
[12,14,16,18,20]

ghci> [ x | x <- [50..100], mod x 7 == 3 ]
[52,59,66,73,80,87,94]

length' xs = sum [1 | _ <- xs]
removeNonUppercase st = [ c | c <- st, c `elem` ['A'..'Z'] ]

boomBangs xs = [ if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x ]

--dando un tipo explícito a la función
limpiaMinus :: [Char] -> [Char]
limpiaMinus xs = [x | x <- xs, elem x ['A'..'Z']]

--triangulos cuyos lados miden menos que 10 y además son rectos
--lado b < c, lado a < b
triangles = [ (a,b,c) | c <- [1..30], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2 ]
