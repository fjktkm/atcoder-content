main :: IO ()
main = do
  [coin500, coin100, coin50, total] <- map read . lines <$> getContents
  print $ length [ () | a <- [0..coin500], b <- [0..coin100], c <- [0..coin50], 500*a + 100*b + 50*c == total]
