import qualified Data.Set

listOfInt :: String -> [Int]
listOfInt string = map read $ words string :: [Int]

filterByCount :: Int -> String -> [Int]
filterByCount c string = [i | i <- listOfInt string, i <= c, i > 0]

main :: IO ()
main = do
  count <- getLine
  list <- getLine
  let setCount = length (Data.Set.fromList (filterByCount (read count :: Int) list))
  if setCount == (read count :: Int) then putStrLn "YES" else putStrLn "NO"