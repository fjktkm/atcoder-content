main :: IO ()
main = do
  [a, b] <- map read . words <$> getLine
  putStrLn $ if even a || even b then "Even" else "Odd"
