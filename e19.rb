require 'date'
require 'active_support/all'

start_date = Date.new(1901, 1, 1)
end_date = Date.new(2000, 12, 31)

date = start_date
sundays = 0

while date.year <= end_date.year
    sundays += 1 if date.sunday?
    date += 1.month
end

puts sundays
