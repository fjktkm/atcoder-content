import Data.List

main = do
  [n, x, y] <- map read . words <$> getLine :: IO [Int]
  a <- map read . words <$> getLine :: IO [Int]
  b <- map read . words <$> getLine :: IO [Int]

  let findIndexOrMax v = maybe n (+ 1) . findIndex (> v) . scanl1 (+) . sortBy (flip compare)
      indexA = findIndexOrMax x a
      indexB = findIndexOrMax y b

  print $ min indexA indexB
