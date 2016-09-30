def palindrome?(s)
  if s.length.even?
    s[0, (s.length / 2)] == s[(s.length / 2), s.length - 1].reverse!
  else
    s[0, (s.length / 2) + 1] == s[(s.length / 2), s.length - 1].reverse!
  end
end

largest = 0

(100..999).each do |n|
  (100..999).each do |j|
    if palindrome?((n * j).to_s) && n * j > largest
      largest = n * j
    end
  end
end

print largest