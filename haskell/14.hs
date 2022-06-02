-- Project Euler problem 14
--
-- Longest Collatz sequence
--
-- Which starting number, under one million, produces the longest chain?
--

collatz :: Int -> Int
collatz n
  | even n = n `div` 2
  | otherwise = (3 * n) + 1

collatzSequence :: Int -> [Int]
collatzSequence n = if n > 1
                       then [n] ++ (collatzSequence n')
                       else [1]
                         where n' = collatz n

lengthCollatzSequencesUnder :: Int -> [(Int, Int)]
lengthCollatzSequencesUnder m = map (\n -> (n, length . collatzSequence $ n)) [1..m]

compareSequenceLengths (n1, l1) (n2, l2) = if l1 > l2 then (n1, l1) else (n2, l2)

largestSequence seq = foldr1 compareSequenceLengths seq

largestSequenceUnder m = largestSequence $ lengthCollatzSequencesUnder m

main = putStrLn . show $ largestSequenceUnder 1000000
