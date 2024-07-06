import Control.Monad
import Data.List
import Data.Maybe

type Board = String

type Blank = Int

type State = (Board, Blank)

main :: IO ()
main = do
  n <- readLn :: IO Int
  s <- getLine :: IO String
  t <- getLine :: IO String

  let initialState = (s ++ "..", n)
      goalState = (t ++ "..", n)

  if filter (== 'B') s /= filter (== 'B') t
    then print (-1)
    else print $ reachSteps [initialState] goalState

reachSteps :: [State] -> State -> Int
reachSteps states goal
  | goal `elem` states = 0
  | otherwise = 1 + reachSteps (states >>= reachableStates) goal

reachableStates :: State -> [State]
reachableStates (board, blank) =
  [ moveStone (board, blank) newBlank
    | newBlank <- [0 .. length board - 2],
      newBlank /= blank - 1,
      newBlank /= blank,
      newBlank /= blank + 1,
      newBlank /= blank + 2
  ]

moveStone :: State -> Blank -> State
moveStone (board, blank) newBlank
  | blank < newBlank =
      let (left, _ : _ : rest) = splitAt blank board
          (middle, x : y : right) = splitAt (newBlank - blank - 2) rest
       in (left ++ x : y : middle ++ ".." ++ right, newBlank)
  | otherwise =
      let (left, x : y : rest) = splitAt newBlank board
          (middle, _ : _ : right) = splitAt (blank - newBlank - 2) rest
       in (left ++ ".." ++ middle ++ x : y : right, newBlank)
