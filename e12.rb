require 'prime'

def triangle_number(n)
    (1..n).to_a.reduce(&:+)
end

def number_of_divisors(n)
    divisors = n.prime_division

    to_multiply = []

    divisors.each do |d|
        divisor, exponent = d
        to_multiply << exponent + 1
    end

    to_multiply.reduce(&:*) || 0
end

number = nil
i = 1

loop do
    next_triangle_number = triangle_number(i)
    divisors = number_of_divisors(next_triangle_number)

    if divisors > 500
        number = next_triangle_number
        break
    end

    i += 1
end

puts number
