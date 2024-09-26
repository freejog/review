def func(n)
  puts "func(#{n})を呼び出しました"
  if n == 0
    return 0
  end
  result = n + func(n - 1)
  puts "#{n}までの和 = #{result}"
  result
end

func(5)