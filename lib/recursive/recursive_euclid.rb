def GCD(m, n)
  if n == 0
    return m
  end
  return GCD(n, m % n)
end

puts GCD(51, 15)
puts GCD(91, 26)