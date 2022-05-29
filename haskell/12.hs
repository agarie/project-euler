-- Project Euler problem 12
--
-- Highly divisible triangular number
--
-- What is the value of the first triangle number to have over five hundred divisors?

triangleNumber :: Int -> Int
triangleNumber n = sum [1..n]

divisors :: Int -> [Int]
divisors n = filter (\i -> n `rem` i == 0) [1..n]

numFactorsForTriangleNumber :: Int -> Int
numFactorsForTriangleNumber = length . divisors . triangleNumber

firstTriangleNumberWithOver :: Int -> Int
firstTriangleNumberWithOver numOfDivisors = triangleNumber . head $ filter (\i -> numFactorsForTriangleNumber i > numOfDivisors) [1..]
