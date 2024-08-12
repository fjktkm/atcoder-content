binarySearch :: (Int -> Int) -> Int -> Int -> Int -> Int
binarySearch f target left right
  | left >= right = right
  | midValue >= target = binarySearch f target left mid
  | otherwise = binarySearch f target (mid + 1) right
  where
    mid = (left + right) `div` 2
    midValue = f mid

papers :: [Int] -> Int -> Int
papers a t = sum $ map (\x -> t `div` x) a

main :: IO ()
main = do
  [n, k] <- map read . words <$> getLine :: IO [Int]
  a <- map read . words <$> getLine :: IO [Int]
  print $ binarySearch (papers a) k 1 (10 ^ 9)
