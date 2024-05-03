import Control.Monad (replicateM)

solve :: [String] -> [String] -> (Int, Int)
solve matrixA matrixB =
  let n = length matrixA
      differentIndex = [(i, j) | i <- [0 .. n - 1], j <- [0 .. n - 1], matrixA !! i !! j /= matrixB !! i !! j]
   in case differentIndex of
        [] -> (-1, -1)
        (x : _) -> x

main :: IO ()
main = do
  n <- readLn :: IO Int
  matrixA <- replicateM n getLine :: IO [String]
  matrixB <- replicateM n getLine :: IO [String]
  let (row, col) = solve matrixA matrixB
  putStrLn $ show (row + 1) ++ " " ++ show (col + 1)
