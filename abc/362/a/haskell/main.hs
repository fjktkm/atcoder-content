main :: IO ()
main = do
  prices <- map read . words <$> getLine :: IO [Int]
  invalidColor <- getLine :: IO String

  let colors = ["Red", "Green", "Blue"]
      pens = filter (\pen -> fst pen /= invalidColor) $ zip colors prices

  print $ minimum $ map snd pens
