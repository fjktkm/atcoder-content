import Control.Monad (void)
import Data.Bits (shiftR, (.|.))
import Data.List (foldl')

countDivisibleByTwo :: Int -> Int
countDivisibleByTwo = go 0
  where
    go count 0 = count
    go count n
      | even n = go (count + 1) (n `shiftR` 1)
      | otherwise = count

main :: IO ()
main = do
  void getLine
  nums <- map read . words <$> getLine :: IO [Int]
  print . countDivisibleByTwo $ foldl' (.|.) 0 nums
