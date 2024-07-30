import Control.Monad (forM_, replicateM)
import Data.Array

main = do
  [n, q] <- map read . words <$> getLine :: IO [Int]
  a <- map read . words <$> getLine :: IO [Int]
  queries <- map ((\[x, y] -> (x, y)) . map read . words) <$> replicateM q getLine :: IO [(Int, Int)]

  let arr = listArray (1, n) a
      cumSum = listArray (0, n) (scanl (+) 0 a)

  forM_ queries $ \(l, r) -> print $ cumSum ! r - cumSum ! (l - 1)
