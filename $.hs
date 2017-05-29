--'$' permite separar los parámetros de la izquierda
-- head head ([[1],[2],[3]])
-- esperarías 1, pero no, es error porque la asignación 
-- es hacia la izquierda, entonces trata de evaluar esto:
-- head head
--lo cual está mal :/
--
--para evitarse esos paréntesis, puedes usar $
ghci> head $ head ([[1],[2],[3]])
1
