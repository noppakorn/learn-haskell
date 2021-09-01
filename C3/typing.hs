removeNonUpperCase :: String -> String
removeNonUpperCase s = [c | c <- s, c `elem` ['A' .. 'Z']]
addThree :: Int -> Int -> Int -> Int
addThree x y z = x + y + z

circumference :: Float -> Float
circumference r = 2 * pi * r

circumference' :: Double -> Double
circumference' r = 2 * pi * r

main :: IO ()
main = do
  s <- getLine
  putStrLn (removeNonUpperCase s)
  print(addThree 1 2 3)
  print (fromIntegral(length [1,2,3,4]) + 2.2)
