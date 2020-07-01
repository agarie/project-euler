-- TECHNICALLY this should work, but it takes too long.
-- pythagorean_triples = [(a, b, c) | a <- [100..], b <- [1..a], c <- [1..b], a + b + c == 1000, a ** 2 + b ** 2 == c ** 2]

-- As I don't have the whole world's time, let's try to outsmart the
-- problem by using some optimization techniques.
triplet = head [(a, b, 1000 - a - b) | a <- [1..], b <- [1..a], a * b + 500000 == 1000 * (a + b), a + b < 1000]
triplet_product = (\(a,b,c) -> a*b*c) triplet
