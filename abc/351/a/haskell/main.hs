solve :: [Int] -> [Int] -> Int
solve takahashiScore aokiScore = 
  let takahashiTotal = sum takahashiScore
      aokiTotal = sum aokiScore
  in takahashiTotal - aokiTotal + 1

main :: IO ()
main = do
  takahashiScore <- map read . words <$> getLine :: IO [Int]
  aokiScore <- map read . words <$> getLine :: IO [Int]
  print $ solve takahashiScore aokiScore
