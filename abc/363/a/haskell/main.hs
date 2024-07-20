main = do
  r <- read <$> getLine :: IO Int
  print $ 100 - r `mod` 100
