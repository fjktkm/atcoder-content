import Control.Monad (replicateM)

main :: IO ()
main = do
  [a, b, c] <- replicateM 3 $ (\[x, y] -> (x, y)) . map read . words <$> getLine

  let dot (ax, ay) (bx, by) (cx, cy) = (bx - ax) * (cx - ax) + (by - ay) * (cy - ay)
      dots = [dot a b c, dot b c a, dot c a b]

  putStrLn $ if 0 `elem` dots then "Yes" else "No"
