import Control.Monad (replicateM)
import Data.Array

main = do
  [h, w] <- map read . words <$> getLine :: IO [Int]
  x <- map (map read . words) <$> replicateM h getLine :: IO [[Int]]
  q <- readLn :: IO Int
  queries <- map (map read . words) <$> replicateM q getLine :: IO [[Int]]

  let xArray = listArray ((1, 1), (h, w)) $ concat x

      calcCumSum i j
        | i == 0 || j == 0 = 0
        | otherwise =
            xArray ! (i, j)
              + cumSumArray ! (i - 1, j)
              + cumSumArray ! (i, j - 1)
              - cumSumArray ! (i - 1, j - 1)

      cumSumArray =
        array
          ((0, 0), (h, w))
          [((i, j), calcCumSum i j) | i <- [0 .. h], j <- [0 .. w]]

      rectSum x1 y1 x2 y2 =
        cumSumArray ! (x2, y2)
          - cumSumArray ! (x1 - 1, y2)
          - cumSumArray ! (x2, y1 - 1)
          + cumSumArray ! (x1 - 1, y1 - 1)

  mapM (print . (\[a, b, c, d] -> rectSum a b c d)) queries
