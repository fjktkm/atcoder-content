main = do
  [a, b, c] <- map read . words <$> getLine :: IO [Int]
  putStrLn $ if (b < c && (a < b || c < a)) || (c < a && a < b) then "Yes" else "No"
