main :: IO ()
main = do
  placement <- getLine
  let count = length $ filter (== '1') placement
  print count
