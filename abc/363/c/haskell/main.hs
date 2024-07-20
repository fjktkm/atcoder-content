import Data.List

hasPalindrome k s =
  let isPalindrome s = s == reverse s
      sublists = [take k t | t <- tails s, length t >= k]
   in any isPalindrome sublists

uniquePermutations [] = [[]]
uniquePermutations l = [x : xs | x <- nub l, xs <- uniquePermutations (delete x l)]

main = do
  [n, k] <- map read . words <$> getLine :: IO [Int]
  s <- getLine :: IO String
  print $ length $ filter (not . hasPalindrome k) (uniquePermutations s)
