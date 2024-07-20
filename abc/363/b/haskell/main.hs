import Data.List
import Data.Ord

main = do
  [n, t, p] <- map read . words <$> getLine :: IO [Int]
  l <- map read . words <$> getLine :: IO [Int]
  print $ max 0 $ t - sortBy (comparing Data.Ord.Down) l !! (p - 1)
