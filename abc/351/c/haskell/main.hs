type Ball = Int

type Balls = [Ball]

add :: Balls -> Ball -> Balls
add [] x = [x]
add (y : ys) x
  | x == y = add ys (x + 1)
  | otherwise = x : y : ys

solve :: Balls -> Int
solve sizes = length $ foldl add [] sizes

main :: IO ()
main = do
  _ <- readLn :: IO Int
  sizes <- map read . words <$> getLine :: IO [Int]
  print $ solve sizes
