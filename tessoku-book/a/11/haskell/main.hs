import Data.Maybe (fromMaybe)
import Data.Vector qualified as V

binarySearch vec target = go 0 (V.length vec - 1)
  where
    go left right
      | left > right = Nothing
      | target == midValue = Just mid
      | target < midValue = go left (mid - 1)
      | otherwise = go (mid + 1) right
      where
        mid = (left + right) `div` 2
        midValue = vec V.! mid

main = do
  [n, x] <- map read . words <$> getLine :: IO [Int]
  a <- V.fromList . map read . words <$> getLine :: IO (V.Vector Int)
  print $ case binarySearch a x of Just index -> index + 1
