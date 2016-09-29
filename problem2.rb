sum = 0

def fib(n, mem = {})
  if n == 0 || n == 1
    return n
  end
  mem[n] = fib(n-1, mem) + fib(n-2, mem)
end

34.times do |x|
  if fib(x) % 2 == 0
    sum += fib(x)
  end
end

print sum