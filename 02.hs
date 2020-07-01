fib :: Int -> Int
fib 0 = 1
fib 1 = 1
fib i = fib (i - 1) + fib (i - 2)

fib_sequence = map fib [0..]

fibonacci_sum = sum [x | x <- takeWhile (< 4000000) fib_sequence, even x]
