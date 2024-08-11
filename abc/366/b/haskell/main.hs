import Control.Monad (replicateM)
import Data.List (transpose)

main = do
  n <- readLn :: IO Int
  s <- replicateM n getLine

  let h = maximum $ map length s
      pad n s = s ++ replicate (n - length s) '*'

  mapM_ (putStrLn . reverse . dropWhile (== '*')) (transpose $ map (pad h) s)
