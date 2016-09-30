sum_square = 0
square_sum = 0

(1..100).each do |n|
  sum_square += n ** 2
  square_sum += n
end

puts (square_sum ** 2) - sum_square