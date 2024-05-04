match :: String -> String -> [Bool]
match [] [] = []
match (x : xs) (y : ys)
  | x == y = True : match xs ys
  | otherwise = False : match (x : xs) ys
match _ _ = [False]

solve :: [(Bool, Int)] -> [Int]
solve [] = []
solve ((x, y) : xs) = if x then y : solve xs else solve xs

main :: IO ()
main = do
  target <- getLine :: IO String
  actual <- getLine :: IO String
  let ziped = zip (match target actual) [1 ..] :: [(Bool, Int)]
  let result = solve ziped
  putStrLn $ unwords $ map show result
