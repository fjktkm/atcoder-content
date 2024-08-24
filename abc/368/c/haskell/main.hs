solve t h
  | h <= 0 = t
  | h < 5 = solve (t + 1) (h - damage)
  | otherwise = solve (t + divided * 3) rest
  where
    damage = if (t + 1) `mod` 3 == 0 then 3 else 1
    (divided, rest) = h `divMod` 5

main = do
  n <- readLn :: IO Int
  h <- map read . words <$> getLine :: IO [Int]
  print $ foldl solve 0 h
