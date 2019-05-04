doubleMe x = x + x
doubleUs x y = x * 2 + y * 2
doubleSmallNumber x = if x > 100
                         then x
                         else x*2

bmiTell :: Double -> Double -> String
bmiTell weight height
  | bmi <= 18.5 = "You're underweight, you emo, you!"
  | bmi <= 25.0 = "You're supposedly normal!"
  | bmi <= 30.0 = "You're fat!"
  | otherwise = "You're a whale"
  where bmi = weight / height ^ 2
calcBmis :: [(Double, Double)] -> [Double]
calcBmis xs = [bmi w h | (w, h) <- xs]
  where bmi weight height = weight / height ^ 2
