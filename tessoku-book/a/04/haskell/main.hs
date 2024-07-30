import Text.Printf (printf)

main = do
  n <- readLn :: IO Int
  putStrLn $ printf "%010b" n
