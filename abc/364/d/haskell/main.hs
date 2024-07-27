import Control.Monad
import Data.List

solve :: [Int] -> (Int, Int) -> Int
solve a (b, k) = sort (map (abs . subtract b) a) !! (k - 1)

main = do
  [n, q] <- map read . words <$> getLine :: IO [Int]
  a <- map read . words <$> getLine :: IO [Int]
  (b, k) <- unzip . map ((\[x, y] -> (x, y)) . map read . words) <$> replicateM q getLine :: IO ([Int], [Int])

  let results = zipWith (curry (solve a)) b k
  mapM_ print results
