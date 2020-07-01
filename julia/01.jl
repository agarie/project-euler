# Julia solution for Project Euler problem #1.
#
# If we list all the natural numbers below 10 that are multiples of 3 or 5, we
# get 3, 5, 6 and 9. The sum of these multiples is 23.
#
# Find the sum of all the multiples of 3 or 5 below 1000.

# First solution, getting to know Julia.
function sum_of_multiples_below(n::Integer)
    is_multiple_of(x, a) = x % a == 0

    accum = 0
    for x = 1:(n - 1)
        if is_multiple_of(x, 3) || is_multiple_of(x, 5)
            accum += x
        end
    end
    accum
end

println(sum_of_multiples_below(10))
println(sum_of_multiples_below(1000))
