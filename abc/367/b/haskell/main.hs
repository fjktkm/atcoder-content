import Data.List (dropWhileEnd)

main = putStrLn . dropWhileEnd (== '.') . dropWhileEnd (== '0') =<< getLine
