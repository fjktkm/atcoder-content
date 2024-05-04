type Ball = Int

add :: [Ball] -> Ball -> [Ball]
add [] x = [x]
add (y : ys) x
  | x == y = add ys (x + 1)
  | otherwise = x : y : ys

solve :: [Ball] -> Int
solve sizes = length $ foldl add [] sizes

main :: IO ()
main = do
  _ <- readLn :: IO Int
  sizes <- map read . words <$> getLine :: IO [Ball]
  print $ solve sizes
