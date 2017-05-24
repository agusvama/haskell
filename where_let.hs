calcBmis :: (RealFloat a) => [(a, a)] -> [a]
calcBmis xs = [bmi w h | (w, h) <- xs]
  where bmi weight height = weight / height ^ 2

--let, in
--let <definicion> in <expresion>
-- [let square x = x * x in (square 5, square 3, square 2)]

calcBmis' :: (RealFloat a) => [(a, a)] -> [a]
calcBmis' xs = [bmi | (w, h) <- xs, let bmi = w / h ^ 2]
--
--las guardas son como una estructura case
bmiTell :: (RealFloat a) => a -> a -> String
bmiTell weight height
  | bmi <= skinny = "Tienes infrapeso ¿eres emo?"
  | bmi <= normal = "Supuestamente eres normal... espero que seas feo"
  | bmi <= fat = "estás gordo, pierde algo de peso"
  | otherwise = "felicidades, eres una ballena!"
  where bmi = weight / height ^ 2
        skinny = 18.5
        normal = 25.0
        fat = 30.0
