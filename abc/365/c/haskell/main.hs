import Data.List

main = do
  [n, m] <- map read . words <$> getLine :: IO [Int]
  a <- map read . words <$> getLine :: IO [Int]

  let sorted = sort a
      diff = zipWith (-) sorted (0 : sorted)
      cumSum = scanl (+) 0 $ zipWith (*) diff [n, n - 1 .. 1]
      index = findIndex (> m) cumSum

  putStrLn $ case index of
    Just i -> show $ sorted !! (i - 1) + (m - cumSum !! i) `div` (n - i + 1)
    Nothing -> "infinite"
