# n = gets.to_i
# h = gets.split.map(&:to_i)
INF = 2**60

n = 7
h = [2, 9, 4, 5, 1, 6, 10]









dp = Array.new(n){INF}

# 初期条件
dp[0] = 0

# ループ
(1..n-1).each do |i|
  if i == 1
    dp[i] = (h[i] - h[i - 1]).abs
  else
    dp[i] = [dp[i - 1] + (h[i] - h[i-1]).abs, dp[i - 2] + (h[i] - h[i - 2]).abs].min
  end
end

p dp