--las listas sólo pueden ser de elementos del mismo tipo
let lostNumbers = [4, 8, 15, 16, 23, 42]
--concatenar listas
--al final
ghci> [1,2,3,4] ++ [9,10,11,12]
[1,2,3,4,9,10,11,12]

ghci> "hello" ++ " " ++ "world"
"hello world"

ghci> ['w','o'] ++ ['o','t']
"woot"

[1,2,3] ++ 4 --no funciona
--revisar el tipo 
ghci> :t (++)

--al principio
--curioso, el caso contrario...
4 : [1,2,3] -> [4,1,2,3] --si funciona

ghci> 'U':"n gato negro"
"Un gato negro"

ghci> 5:[1,2,3,4,5]
[5,1,2,3,4,5]

-- sólo se puede ingresar UN elemento al principio
"un" : "gato negro" -> no funciona
ghci> :t (:)

--obtener el elemento en el índice x
ghci> [1,2,3] !! 1
2
--que raro, mejor lo colocamos en una función
elementoEn x xs = xs !! x

funciones sobre listas:
Haskell -> Clojure
head -> first
tail -> rest
last -> last
init -> butlast
length -> count
null -> empty?

ghci> reverse [5,4,3,2,1]
[1,2,3,4,5]

ghci> take 3 [5,4,3,2,1]
[5,4,3]

ghci> take 1 [3,9,3]
[3]

ghci> take 5 [1,2]
[1,2]

ghci> take 0 [6,6,6]
[]

ghci> drop 3 [8,4,2,1,5,6]
[1,5,6]

ghci> drop 0 [1,2,3,4]
[1,2,3,4]

ghci> drop 100 [1,2,3,4]
[]
--take y drop, devuelven una lista
take 2 [3,9,3] == init [3,9,3]
--head y last, devuelven un elemento, de modo que no vale usar take 1 o drop xs-1 con head y last

ghci> minimum [8,4,2,1,5,6]
1

ghci> maximum [1,9,2,3,4]
9

--reduce con suma y multiplicacion
ghci> sum [5,2,1,6,3,2,5,7]
31

ghci> product [6,2,1,2]
24

ghci> product [1,2,5,6,7,9,2,0]
0

--saber si un elemento pertenece a una lista True/False
ghci> elem 2 [1,2,3]
True

ghci> elem 4 [1,2,3]
False

--dentro de una función
pertenece x xs = elem x xs

--crear listas usando rangos
ghci> [1..20]
[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]

ghci> ['a'..'z']
"abcdefghijklmnopqrstuvwxyz"

ghci> ['K'..'Z']
"KLMNOPQRSTUVWXYZ"

--al principio se puede indicar el "paso"
--en este caso, de 2 en 2: [2,4.. y hasta donde quieras]
ghci> [2,4..20]
[2,4,6,8,10,12,14,16,18,20]

ghci> [3,6..20]
[3,6,9,12,15,18]

--[0,5..100]
--inicio, salto .. final

--la evalución perezosa permite no evaluar la lista infinita, sólo los primeros 100
take 100 [2,4..] 

--toma una lista y empieza a encolar sus mismos elementos:
cycle
--toma un elemento y devuelve una lista con ellos repetidos
repeat 
--devuelve una lista con N elementos que se le indiquen
replicate N elemento
