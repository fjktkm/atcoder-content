type Point3D = (Int, Int, Int)

type Cuboid = (Point3D, Point3D)

main :: IO ()
main = do
  [a, b, c, d, e, f] <- map read . words <$> getLine
  [g, h, i, j, k, l] <- map read . words <$> getLine

  let cuboid1 = ((a, b, c), (d, e, f))
      cuboid2 = ((g, h, i), (j, k, l))
      result = isOverlap3D cuboid1 cuboid2

  putStrLn $ if result then "Yes" else "No"

isOverlap3D :: Cuboid -> Cuboid -> Bool
isOverlap3D ((a, b, c), (d, e, f)) ((g, h, i), (j, k, l)) =
  isOverlap1D (a, d) (g, j) && isOverlap1D (b, e) (h, k) && isOverlap1D (c, f) (i, l)
  where
    isOverlap1D (a, b) (c, d) = max a c < min b d
