import Control.Monad (void)

type Plan = (Int, Int, Int)

canReach :: Plan -> Plan -> Bool
canReach (t1, x1, y1) (t2, x2, y2) =
  let distance = abs (x2 - x1) + abs (y2 - y1)
      timeDiff = t2 - t1
   in distance <= timeDiff && even (distance - timeDiff)

checkPlans :: [Plan] -> Bool
checkPlans plans = and $ zipWith canReach plans (drop 1 plans)

main :: IO ()
main = do
  void getLine
  contents <- getContents
  let plans = (0, 0, 0) : map ((\[t, x, y] -> (t, x, y)) . map read . words) (lines contents)
  putStrLn $ if checkPlans plans then "Yes" else "No"
