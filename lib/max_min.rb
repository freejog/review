def max(ary)
  max = 0
  ary.each.with_index do |num, i|
    if ary[i] > max
      max = ary[i]
    end
  end
  max
end

def min(ary)
  min = 0
  ary.each.with_index do |num, i|
    if ary[i] < min
      min = ary[i]
    end
  end
  min
end


ary = (1..10).to_a.shuffle
p ary
puts "max = #{max(ary)} \nmin = #{min(ary)}"