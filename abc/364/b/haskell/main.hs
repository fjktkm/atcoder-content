import Control.Monad

type Pos = (Int, Int)

type Field = (Int, Int, [[Char]])

type Move = Char

move :: Field -> Pos -> Move -> Pos
move f (i, j) m = if isInside && not isWall then (i', j') else (i, j)
  where
    (h, w, c) = f
    (di, dj) = case m of
      'U' -> (-1, 0)
      'D' -> (1, 0)
      'L' -> (0, -1)
      'R' -> (0, 1)
    i' = i + di
    j' = j + dj
    isInside = 1 <= i' && i' <= h && 1 <= j' && j' <= w
    isWall = c !! (i' - 1) !! (j' - 1) == '#'

main = do
  [h, w] <- map read . words <$> getLine :: IO [Int]
  [si, sj] <- map read . words <$> getLine :: IO [Int]
  c <- replicateM h getLine :: IO [[Char]]
  x <- getLine :: IO [Char]

  let f = (h, w, c)
  let pos = (si, sj)
  let pos'@(ex, ey) = foldl (move f) pos x

  putStrLn $ show ex ++ " " ++ show ey
