sum_multiples = sum [x | x <- [0..1000], x `mod` 3 == 0 || x `mod` 5 == 0]
-- string_to_output = show sum_multiples
main = putStrLn $ show sum_multiples
-- main = putStrLn (show sum_multiples)
