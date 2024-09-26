# 入力
N = 6
W = 15
w_v = [[2,3], [1,2], [3,6], [2,1], [1,3], [5,85]]

weight, value =[], []
(0..N-1).each {|i| weight << w_v[i][0]}
(0..N-1).each {|i| value << w_v[i][1]}

# 大きい方を選ぶ
def chmax(a, b)
  if a < b
    return b
  else
    return a
  end
end


# DPテーブル定義
dp = Array.new(N + 1) { Array.new(W+1){0}}

# DPループ
(0..N-1).each do |i|
  (0..W).each do |w|
    # i番目の荷物を選ぶ時
    if (w - weight[i] >= 0)
      dp[i+1][w] = chmax(dp[i+1][w], dp[i][w-weight[i]] + value[i])
    end
    # i番目の荷物を選ばない時
    dp[i+1][w] = chmax(dp[i+1][w], dp[i][w])
  end
end

puts dp[N][W]
