m = 1
n = 2

def find_pyth_trip(m, n, operator)
  a = n ** 2 - m ** 2
  b = 2 * n * m
  c = n ** 2 + m ** 2
  a.send(operator, b).send(operator, c)
end

(1..999).each do |x|
  (1..999).each do |y|
    if find_pyth_trip(x, y, :+) == 1000 && x < y
      m = x
      n = y
      break
    end
  end
end

puts find_pyth_trip(m, n, :*)