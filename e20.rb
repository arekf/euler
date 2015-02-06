def factorial(n)
    (1..n).reduce(:*) || 1
end

num = factorial(100)

puts num.to_s.split("").map(&:to_i).reduce(&:+)
