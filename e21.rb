require 'prime'

def divisors(n)
   (1..(n / 2.0).ceil).select { |i| n.modulo(i).zero? }
 end

def d(n)
    divisors(n).reduce(&:+) || 1
end

amicables = []

(1...10_000).to_a.each do |a|
    b = d(a)
    i = d(b)
    if a == i && a != b
        amicables << a
        amicables << b
    end
end

puts amicables.uniq.reduce(&:+)
