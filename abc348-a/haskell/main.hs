import Control.Monad

getSymbol :: Int -> String
getSymbol numOfKick
  | numOfKick `mod` 3 == 0 = "x"
  | otherwise = "o"

getResultString :: Int -> String
getResultString numOfKick = join $ map getSymbol [1 .. numOfKick]

main :: IO ()
main = do
  numOfKick <- read <$> getLine
  putStrLn $ getResultString numOfKick
