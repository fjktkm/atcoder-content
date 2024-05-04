import Text.Read (readMaybe)

isValidNumber :: Int -> Bool
isValidNumber num = num >= 1 && num <= 349 && num /= 316

isValidContest :: String -> Bool
isValidContest = maybe False isValidNumber . readMaybe . drop (length "ABC")

main :: IO ()
main = do
  s <- getLine
  putStrLn $ if isValidContest s then "Yes" else "No"
