import Data.List (sortBy)

solve :: [Int] -> Int
solve a
  | n > 1 = 1 + solve (subed sorted)
  | otherwise = 0
  where
    n = length $ filter id [x > 0 | x <- a]
    sorted = sortBy (flip compare) a
    subed (x : y : xs) = x - 1 : y - 1 : xs

main = do
  n <- readLn :: IO Int
  a <- map read . words <$> getLine :: IO [Int]
  print $ solve a
