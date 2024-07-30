main = do
  [n, x] <- map read . words <$> getLine :: IO [Int]
  a <- map read . words <$> getLine :: IO [Int]
  putStrLn $ if x `elem` a then "Yes" else "No"
