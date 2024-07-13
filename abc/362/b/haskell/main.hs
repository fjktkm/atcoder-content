main :: IO ()
main = do
  [ax, ay] <- map read . words <$> getLine :: IO [Int]
  [bx, by] <- map read . words <$> getLine :: IO [Int]
  [cx, cy] <- map read . words <$> getLine :: IO [Int]

  let dota = (bx - ax) * (cx - ax) + (by - ay) * (cy - ay)
      dotb = (cx - bx) * (ax - bx) + (cy - by) * (ay - by)
      dotc = (ax - cx) * (bx - cx) + (ay - cy) * (by - cy)

  putStrLn $ if 0 `elem` [dota, dotb, dotc] then "Yes" else "No"
