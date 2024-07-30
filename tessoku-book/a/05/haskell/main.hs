main = do
  [n, k] <- map read . words <$> getLine
  print $
    length
      [ ()
        | red <- [1 .. n],
          let minBlue = max 1 (k - n - red),
          let maxBlue = min n (k - 1 - red),
          maxBlue >= minBlue,
          blue <- [minBlue .. maxBlue]
      ]
