digitSum :: Int -> Int
digitSum 0 = 0
digitSum n = n `mod` 10 + digitSum (n `div` 10)

main :: IO ()
main = do
  [rangeMax, digitSumMin, digitSumMax] <- map read . words <$> getLine :: IO [Int]
  print . sum $ filter (\x -> digitSumMin <= digitSum x && digitSum x <= digitSumMax) [1 .. rangeMax]
