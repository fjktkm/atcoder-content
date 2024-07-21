import Data.List

main = do
  n <- readLn :: IO Int
  print $ palindromeNumber $ findSublistIndex 1 n

palindromeNumber (n, k)
  | n == 1 = 0
  | even n =
      let x = 10 ^ ((n + 1) `div` 2 - 1) + k - 1
       in read $ show x ++ drop 1 (reverse $ show x)
  | otherwise =
      let x = 10 ^ (n `div` 2 - 1) + k - 1
       in read $ show x ++ reverse (show x)

findSublistIndex n k
  | k <= kaibunSublistLengths !! (n - 1) = (n, k)
  | otherwise = findSublistIndex (n + 1) (k - kaibunSublistLengths !! (n - 1))
  where
    kaibunSublistLengths = 1 : concat [[9 * 10 ^ i, 9 * 10 ^ i] | i <- [0 ..]] :: [Int]
