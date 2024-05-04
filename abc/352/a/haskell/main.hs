solve :: Int -> Int -> Int -> Bool
solve from to target
  | from <= target && target <= to = True
  | to <= target && target <= from = True
  | otherwise = False

main :: IO ()
main = do
  [_, from, to, target] <- map read . words <$> getLine :: IO [Int]
  putStrLn $ if solve from to target then "Yes" else "No"
