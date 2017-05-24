--las guardas son como una estructura swith/case de java
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
