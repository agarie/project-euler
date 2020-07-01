import Data.List

remove_from_list a (x:xs)
  | a == x = xs
  | otherwise = remove_from_list a (xs ++ [x])

factorize :: Int -> [Int]
factorize 1 = [1]
factorize n = factorize (n `div` next_factor) ++ [next_factor]
  where next_factor = head $ filter (\i -> n `rem` i == 0) [2..]

join_factors xs ys = join_factors' xs ys []
  where join_factors' [] ys zs = sort $ ys ++ zs
        join_factors' xs [] zs = sort $ xs ++ zs
        join_factors' xs (y:ys) zs
          | y `elem` xs = join_factors' (remove_from_list y xs) ys (zs ++ [y])
          | otherwise = join_factors' xs ys (zs ++ [y])

minimum_factors :: Int -> [Int]
minimum_factors n = foldl join_factors [] factors
  where factors = map factorize [1..n]

smallest_divisible_until :: Int -> Int
smallest_divisible_until n = product $ minimum_factors n

for_ten = smallest_divisible_until 10 -- Should be 2520.
for_twenty = smallest_divisible_until 20
