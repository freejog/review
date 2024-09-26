# n = gets.to_i
# h = gets.split.map(&:to_i)
INF = 2**60

n = 7
h = [2, 9, 4, 5, 1, 6, 10]

def chmin(a, b)
  if a > b
    return b
  else
    return a
  end
end

dp = Array.new(n){INF}

# 初期条件
dp[0] = 0

# ループ
(1..n-1).each do |i|
  dp[i] = chmin(dp[i], dp[i - 1] + (h[i] - h[i-1]).abs)
  
  if i > 1
    dp[i] = chmin(dp[i], dp[i - 2] + (h[i] - h[i - 2]).abs)
  end
end

p dp