how_many = 100
sum_of_squares = sum [i ** 2 | i <- [1..how_many]]
square_of_sum = (sum [1..how_many]) ** 2
difference = square_of_sum - sum_of_squares
