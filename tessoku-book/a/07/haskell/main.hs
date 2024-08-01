import Control.Monad (replicateM)
import Data.Map qualified as Map
import Data.Maybe (fromMaybe)

main = do
  d <- readLn :: IO Int
  n <- readLn :: IO Int
  participants <- map ((\[x, y] -> (x, y)) . map read . words) <$> replicateM n getLine :: IO [(Int, Int)]

  let freqMap = foldl (\acc x -> Map.insertWith (+) x 1 acc) Map.empty
      freqList m = map (\i -> fromMaybe 0 $ Map.lookup i m) [1 .. d]
      calcCumSum = scanl1 (+) . freqList . freqMap

      fromCumSum = calcCumSum $ map fst participants
      toCumSum = calcCumSum $ map snd participants

  mapM_ print $ zipWith (-) fromCumSum (0 : toCumSum)
