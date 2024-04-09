import Control.Monad (void)
import Data.List (nub)

calcKagamimochiStages :: [Int] -> Int
calcKagamimochiStages = length . nub

main :: IO ()
main = do
  void getLine
  radiusList <- map read . lines <$> getContents
  print . calcKagamimochiStages $ radiusList
