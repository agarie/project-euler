is_palindrome :: Int -> Bool
is_palindrome n = showy == reverse showy
  where showy = show n

largest_palindrome = maximum $ filter is_palindrome [x * y | x <- [100..999], y <- [100..999]]
