main = do
  [n, t, a] <- map read . words <$> getLine :: IO [Int]
  putStrLn $ if max t a > n `div` 2 then "Yes" else "No"
