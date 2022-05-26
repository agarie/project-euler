-- The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
--
-- Find the sum of all the primes below two million.

-- Check 07.hs

divisible :: (Integral a) => a -> a -> Bool
divisible a b = a `rem` b == 0

-- This is an incredibly dumb way to check for primeness lol
isPrime :: Int -> Bool
isPrime n = not . or $ map (divisible n) [2 .. (ceiling . sqrt . fromIntegral) n]

sumOfPrimesBelow :: Int -> Int
sumOfPrimesBelow n = 2 + (sum $ filter (\i -> isPrime i) [2..n])

main :: IO ()
main = putStrLn . show $ sumOfPrimesBelow 2000000
