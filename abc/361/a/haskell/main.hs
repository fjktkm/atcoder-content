main :: IO ()
main = do
  [_, k, x] <- map read . words <$> getLine
  a <- map read . words <$> getLine
  let result = take k a ++ [x] ++ drop k a
  putStrLn $ unwords $ map show result
