divisible :: (Integral a) => a -> a -> Bool
divisible a b = a `rem` b == 0

is_prime :: Int -> Bool
is_prime n = not . or $ map (divisible n) [2 .. (ceiling . sqrt . fromIntegral) n]

nth_prime :: Int -> Int
nth_prime n = last $ take n $ filter (\i -> is_prime i || i == 2) [2..]
