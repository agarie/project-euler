divisible :: (Integral a) => a -> a -> Bool
divisible a b = a `rem` b == 0

prime_factors :: Int -> [Int]
prime_factors n = factors [] n
  where factors acc 1 = acc
        factors acc n = factors (acc ++ [next_factor]) (n `div` next_factor)
          where next_factor = head $ filter (divisible n) [2..]

largest_prime_factor = maximum $ prime_factors 600851475143
