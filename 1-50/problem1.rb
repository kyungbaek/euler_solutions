sum = 0

ARGV[0].to_i.times do |i|
  if i % 3 == 0|| i % 5 == 0
    sum += i
  end
end

print sum