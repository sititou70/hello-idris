import Data.String

data FizzBuzz = F | B | FB | I Integer

Show FizzBuzz where
  show F     = "fizz"
  show B     = "buzz"
  show FB    = "fizzbuzz"
  show (I n) = show n

fizzBuzz : Integer -> FizzBuzz
fizzBuzz n = case (n `mod` 3, n `mod` 5) of
               (0, 0) => FB
               (_, 0) => B
               (0, _) => F
               _      => I n
fizzBuzzSeq : Integer -> List FizzBuzz
fizzBuzzSeq n = map fizzBuzz [1..n]

main : IO ()
main = do
  [_, arg] <- getArgs
    | _ => putStrLn "please specify N"
  let Just n = parseInteger arg
    | Nothing => putStrLn "arg must be an integer"
  for_(fizzBuzzSeq n) (putStrLn . show)
