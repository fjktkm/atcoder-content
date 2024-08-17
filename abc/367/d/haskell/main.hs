import Data.Vector qualified as V
import Data.Vector.Unboxed qualified as UV

main :: IO ()
main = do
  [n, m] <- map read . words <$> getLine
  a <- map read . words <$> getLine

  let a' = UV.fromList (a ++ a)
      cumSum = UV.scanl1 (+) a'
      count = length $ filter (\x -> x `mod` m == 0) [cumSum UV.! t - cumSum UV.! s | s <- [0 .. n - 1], t <- [s + 1 .. s + n - 1]]

  print count
