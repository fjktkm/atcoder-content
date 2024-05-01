import Control.Monad (replicateM)
import Data.List (elemIndex, maximumBy)
import Data.Ord (comparing)

type Point = (Int, Int)

distanceSq :: Point -> Point -> Int
distanceSq (x1, y1) (x2, y2) = (x1 - x2) ^ 2 + (y1 - y2) ^ 2

farthestPoint :: [Point] -> Int -> Int
farthestPoint points i =
  let distances = map (distanceSq (points !! i)) points
      maxDistance = maximum distances
   in case elemIndex maxDistance distances of
        Just idx -> idx + 1
        Nothing -> error "Should not happen"

main :: IO ()
main = do
  n <- readLn :: IO Int
  points <- replicateM n $ do
    [x, y] <- map read . words <$> getLine
    return (x, y)
  let results = map (farthestPoint points) [0 .. n - 1]
  mapM_ print results
