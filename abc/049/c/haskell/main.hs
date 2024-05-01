isPossible :: String -> Bool
isPossible "" = True
isPossible s =
  let patterns = ["dream", "dreamer", "erase", "eraser"]
   in or [isPossible (drop len s) | t <- patterns, let len = length t, take len s == t]

main :: IO ()
main = do
  s <- getLine
  putStrLn $ if isPossible s then "YES" else "NO"
