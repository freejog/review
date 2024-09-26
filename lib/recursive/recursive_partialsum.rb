# 入力
N = 4
W = 14
ary = [3, 2, 6, 5]

def func(i, w, ary)
  # ベースケース
  if i == 0
    w == 0 ? (return true) : (return false)
  end

  # ary[i-1]を選ばない場合
  if func(i-1, w, ary)
    return true
  end

  # ary[i-1]を選ぶ場合
  if func(i-1, w - ary[i-1], ary)
    return true
  end

  return false
end

# 再帰的に解く
func(N, W, ary) ? (puts 'Yes') : (puts 'No')