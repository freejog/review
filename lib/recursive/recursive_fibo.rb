$count = 0

def fibo(n)
  puts "fibo(#{n})を呼び出しました"
  $count += 1

  # ベースケース
  if n == 0
    return 0
  elsif n == 1
    return 1
  end
  result = fibo(n-1) + fibo(n-2)
  puts "#{n}項目：#{result}"
  result
end

fibo(50)
puts "計算回数は#{$count}回"