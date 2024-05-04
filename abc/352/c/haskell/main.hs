import Control.Monad (replicateM)

solve :: [(Int, Int)] -> Int
solve heights =
  let sholderHeights = map fst heights
      headHeights = map snd heights
      diff = zipWith (-) headHeights sholderHeights
   in sum sholderHeights + maximum diff

main :: IO ()
main = do
  n <- readLn :: IO Int
  heights <- replicateM n ((\[a, b] -> (a, b)) . map read . words <$> getLine) :: IO [(Int, Int)]
  print $ solve heights
