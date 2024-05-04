match :: String -> String -> [Bool]
match [] [] = []
match (x : xs) (y : ys)
  | x == y = True : match xs ys
  | otherwise = False : match (x : xs) ys
match _ _ = [False]

main :: IO ()
main = do
  target <- getLine :: IO String
  actual <- getLine :: IO String
  let results = zip (match target actual) [1..]
  putStrLn $ unwords $ map (show . snd) $ filter fst results
