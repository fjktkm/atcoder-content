import Control.Applicative (liftA2)

combinations = foldr (liftA2 (:)) [[]]

main = do
  [n, k] <- map read . words <$> getLine :: IO [Int]
  r <- map read . words <$> getLine :: IO [Int]
  mapM_ (putStrLn . unwords . map show) $ filter (\xs -> sum xs `mod` k == 0) $ combinations [[1 .. ri] | ri <- r]
