main = do
  [n, k] <- map read . words <$> getLine :: IO [Int]
  a <- map read . words <$> getLine :: IO [Int]
  putStrLn $ unwords $ map show $ let len = length a - k in drop len a ++ take len a
