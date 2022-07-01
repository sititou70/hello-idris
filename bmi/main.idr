bmi : Double -> Double -> Double
bmi weight height = weight / height / height

diagnostic : Double -> Double -> String
diagnostic weight height =
  let index = bmi weight height in
  if index < 18.5
  then "Underweight"
  else if index < 25.0
  then "Normal range"
  else if index < 30.0
  then "Pre-obese"
  else if index < 35.0
  then "Obese class I"
  else if index < 40.0
  then "Obese class II"
  else "Obese class III"
