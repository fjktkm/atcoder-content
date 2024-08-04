import Data.List
import Data.Ord

main = do
  n <- readLn :: IO Int
  a <- map read . words <$> getLine :: IO [Int]
  print $ snd $ sortBy (comparing Data.Ord.Down) (zip a [1 .. n]) !! 1
