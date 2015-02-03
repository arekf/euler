def collatz_sequence(n)
    return n / 2 if n.even?
    return (3 * n) + 1
end

num = 0
sequence_length = 0

(2...1_000_000).to_a.each do |i|
    sequence = [i]

    loop do
        seq = collatz_sequence(sequence.last)
        sequence << seq
        break if seq == 1
    end

    if sequence.count > sequence_length
        sequence_length = sequence.count
        num = i
    end
end

puts num
