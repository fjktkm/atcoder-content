import Control.Monad

main :: IO ()
main = do
  n <- readLn :: IO Int
  (l, r) <- unzip . map ((\[a, b] -> (a, b)) . map read . words) <$> replicateM n getLine
  putStrLn $
    if sum l > 0 || sum r < 0
      then "No"
      else "Yes\n" ++ unwords (map show $ distribute l r $ -sum l)

distribute :: [Int] -> [Int] -> Int -> [Int]
distribute ls _ 0 = ls
distribute (l : ls) (r : rs) total = let sub = min (r - l) total in l + sub : distribute ls rs (total - sub)
