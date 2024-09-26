F = []
F[0], F[1] = 0, 1

count = 0
(2..50).each do |n|
  F[n] = F[n-1] + F[n-2]
  puts "#{n}項目：#{F[n]}"
  count += 1
end

puts "計算回数：#{count}"