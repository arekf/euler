fibs = [1, 1]

def fib(n)
    return 1 if n == 1 || n == 2
    return fib(n - 1) + fib(n - 2)
end

i = 3
loop do
    value = fibs[-1] + fibs[-2]
    fibs << value
    digits = value.to_s.size

    if digits >= 1000
        puts i
        break
    end

    i += 1
end
