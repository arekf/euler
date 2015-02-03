require 'humanize'

puts (0..1000).to_a.inject { |sum, i| sum += i.humanize.gsub(/[ -]/, "").length }
