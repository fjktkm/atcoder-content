main = do
  y <- readLn :: IO Int
  print $ if y `mod` 4 == 0 && (y `mod` 100 /= 0 || y `mod` 400 == 0) then 366 else 365
