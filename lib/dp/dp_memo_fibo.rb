
$memo = []

def fibo(n)
  case n
  when 0 then return 0
  when 1 then return 1
  end

  return $memo[n] if $memo[n] != -1
  return $memo[n] = fibo(n-1) + fibo(n-2)
end

$memo = Array.new(50) {-1}
fibo(49)
p $memo
(1..49).each do |n|
  puts "#{n}項目：#{$memo[n]}"
end


fibo(50)