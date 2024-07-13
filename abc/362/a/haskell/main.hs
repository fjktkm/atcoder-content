main :: IO ()
main = do
  [r, g, b] <- map read . words <$> getLine :: IO [Int]
  c <- getLine :: IO String
  let validPens
        | c == "Red" = [g, b]
        | c == "Green" = [r, b]
        | otherwise = [r, g]
  print $ minimum validPens
