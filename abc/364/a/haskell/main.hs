import Control.Monad

main = do
  n <- read <$> getLine :: IO Int
  s <- replicateM n getLine
  putStrLn $ if any (\(a, b) -> a == "sweet" && b == "sweet") (take (n - 2) (zip s (drop 1 s))) then "No" else "Yes"
