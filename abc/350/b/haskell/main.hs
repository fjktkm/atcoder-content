treatment :: [Bool] -> Int -> [Bool]
treatment teeth n = [if i == n then not x else x | (i, x) <- zip [1 ..] teeth]

main :: IO ()
main = do
  [n, q] <- map read . words <$> getLine :: IO [Int]
  t <- map read . words <$> getLine :: IO [Int]
  let initialTeeth = replicate n True
  let finalTeeth = foldl treatment initialTeeth t
  print $ length $ filter id finalTeeth
