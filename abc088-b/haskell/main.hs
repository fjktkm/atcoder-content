import Control.Monad (void)
import Data.List (sortBy)
import Data.Ord (Down (Down), comparing)

calcDifference :: [Int] -> Int
calcDifference = (\(a, b) -> sum a - sum b) . foldr (\x (evens, odds) -> (x : odds, evens)) ([], []) . sortBy (comparing Down)

main :: IO ()
main = do
  void getLine
  numbers <- map read . words <$> getLine :: IO [Int]
  print . calcDifference $ numbers
