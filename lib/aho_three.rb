def aho_three(n)
  if n % 3 == 0 || n.to_s.match(/3/)
    "#{n}:aho!"
  else
    n
  end
end

# 下のようにうてば、上のチートシートが作れます。
# (1..40).each {|i| puts aho_three(i)}