doubleMe x = x + x
--crear funciones pequeñas y correctas
--y luego combinarlas en funciones más complejas
doubleUs x y = doubleMe x + doubleMe y

--esto es una ecuación
--f(x) = {x x > 100
--        x*2}
doubleSmallNumber x = if x > 100
                  then x
                  --la parte else es obligatoria
                  else x*2
--definición estricta de una función, o una pequeña variante, se indica con '
doubleSmallNumber' x = (if x > 100 then x else x*2) + 1 

--el nombre de una función no puede iniciar en mayúsculas
valorCierto = "true"
