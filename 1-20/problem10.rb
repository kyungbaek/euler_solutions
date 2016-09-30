require 'Prime'

sum = 0

(1..1999999).each do |x|
  sum += x unless !Prime.prime?(x)
  puts sum
end

puts sum