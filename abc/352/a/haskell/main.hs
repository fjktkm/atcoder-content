solve :: Int -> Int -> Int -> Bool
solve from to target = min from to <= target && target <= max from to

main :: IO ()
main = do
  [_, from, to, target] <- map read . words <$> getLine :: IO [Int]
  putStrLn $ if solve from to target then "Yes" else "No"
