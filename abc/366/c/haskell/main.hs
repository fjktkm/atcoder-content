import Control.Monad (foldM, replicateM)
import Control.Monad.Writer (Writer, runWriter, tell)
import Data.Map qualified as Map

execute :: Map.Map Int Int -> [Int] -> Writer [Int] (Map.Map Int Int)
execute bag [1, x] = return $
  case Map.lookup x bag of
    Just v -> Map.insert x (v + 1) bag
    Nothing -> Map.insert x 1 bag
execute bag [2, x] = return $
  case Map.lookup x bag of
    Just 1 -> Map.delete x bag
    Just v -> Map.insert x (v - 1) bag
    Nothing -> bag
execute bag [3] = do
  tell [Map.size bag]
  return bag

main = do
  n <- readLn :: IO Int
  q <- map (map read . words) <$> replicateM n getLine :: IO [[Int]]
  mapM_ print $ snd $ runWriter $ foldM execute Map.empty q
