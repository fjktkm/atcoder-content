mayBeLie :: Int -> Int -> (Int, Int, Int)
mayBeLie numOfSheets totalAmount =
  let possiblePair =
        [ (x, y, z)
          | x <- [0 .. numOfSheets],
            y <- [0 .. numOfSheets - x],
            let z = numOfSheets - x - y,
            10000 * x + 5000 * y + 1000 * z == totalAmount
        ]
   in case possiblePair of
        (x, y, z) : _ -> (x, y, z)
        _ -> (-1, -1, -1)

main :: IO ()
main = do
  [numOfSheets, totalAmount] <- map read . words <$> getLine
  let (x, y, z) = mayBeLie numOfSheets totalAmount
  putStrLn $ show x ++ " " ++ show y ++ " " ++ show z
