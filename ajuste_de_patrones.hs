--el tipo que devuelve la función es el último, todos los anteriores son parámetros
sumaTresNumeros :: Int -> Int -> Int -> Int
sumaTresNumeros x y z = x + y + z

--ajuste de patrones
sayMe :: (Integral a) => a -> String
sayMe 1 = "¡Uno!"
sayMe 2 = "¡Dos!"
sayMe 3 = "¡Tres!"
sayMe 4 = "¡Cuatro!"
sayMe 5 = "¡Cinco!"
sayMe x = "No entre uno 1 y 5"

addVectors :: (Num a) => (a, a) -> (a, a) -> (a, a)
addVectors a b = (fst a + fst b, snd a + snd b)
--porque recibir 2 cosas?, si puedo moldearlas con
--un patrón a mi antojo
addVectors (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)

--primero, medio y último desde una tripla
first :: (a, b, c) -> a
first (x, _, _) = x

second :: (a, b, c) -> b
second (_, y, _) = y

third :: (a, b, c) -> c
third (_, _, z) = z

tell :: (Show a) => [a] -> String
tell []       = "La lista está vacía"
tell (x:[])   = "La lista tiene un elemento: " ++ show x
tell (x:y:[]) = "La lista tiene dos elementos: " ++ show x ++ " y " ++ show y
tell (x:y:_)  = "La lista es larga. Los primeros dos elementos son: " ++ show x ++ " y " ++ show y

--combina ajuste de patrones con recursividad
length' :: (Num b) => [a] -> b
length' [] = 0 --caso base
length' (_:xs) = 1 + length' xs --recursividad con operación pendiente (length' xs)

sum' :: (Num a) => [a] -> a
sum' [] = 0
sum' (x:xs) = x + sum' xs

capital :: String -> String
capital "" = "¡Una cadena vacía!"
capital all@(x:_) = "La primera letra de " ++ all ++ " es " ++ [x]


calcBmis :: (RealFloat a) => [(a, a)] -> [a]
calcBmis xs = [bmi w h | (w, h) <- xs]
  where bmi weight height = weight / height ^ 2

calcBmis' :: (RealFloat a) => [(a, a)] -> [a]
calcBmis' xs = [bmi | (w, h) <- xs, let bmi = w / h ^ 2]
