import Control.Monad (replicateM)

solve :: [(Int, Int)] -> Int
solve height =
  let sholderHeight = map fst height
      headHeight = map snd height
      diff = zipWith (-) headHeight sholderHeight
   in sum sholderHeight + maximum diff

main :: IO ()
main = do
  n <- readLn :: IO Int
  height <- replicateM n $ do
    [a, b] <- map read . words <$> getLine :: IO [Int]
    return (a, b)
  print $ solve height
