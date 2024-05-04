solve :: [Int] -> [Int] -> Int
solve fst snd = sum fst - sum snd + 1

main :: IO ()
main = do
  takahashiScore <- map read . words <$> getLine :: IO [Int]
  aokiScore <- map read . words <$> getLine :: IO [Int]
  print $ solve takahashiScore aokiScore
