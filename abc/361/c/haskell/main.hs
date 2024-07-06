import Data.List (sort)

main :: IO ()
main = do
  [_, k] <- map read . words <$> getLine :: IO [Int]
  a <- sort . map read . words <$> getLine :: IO [Int]
  print $ minimum [x - y | (x, y) <- zip (drop (length a - k - 1) a) a]
