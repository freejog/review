$count = 0

def tribo(n)
  $count += 1
  
  # ベースケース
  case n
  when 0
    return 0
  when 1
    return 0
  when 2
    return 1
  end

  # 再帰呼び出し
  result = tribo(n-1) + tribo(n-2) + tribo(n-3)
end

puts tribo(10)