import Control.Monad
import Data.List

main :: IO ()
main = do
  n <- readLn :: IO Int
  pairs <- replicateM n $ do
    [a, b] <- map read . words <$> getLine :: IO [Int]
    return (a, b)

  let seqs = foldM (\seq (a, b) -> [seq ++ [x] | x <- [a .. b]]) [] pairs
  let validSeq = find (\seq -> sum seq == 0) seqs

  putStrLn $ case validSeq of
    Nothing -> "No"
    Just seq -> "Yes\n" ++ unwords (map show seq)
