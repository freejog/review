def insertion_sort(ary)
    len = ary.length

    (1..(len-1)).each do |i|
        tmp = ary[i]
        j = i - 1
        while j >= 0 && ary[j] > tmp
            ary[j+1] = ary[j]
            j -= 1
        end
        ary[j+1] = tmp
        puts ary.join(" ")
    end
end


def selection_sort(ary)
  length = ary.length

  (0..length-2).each do |i|
      min_index = i
      (i+1..length-1).each do |j|
          if ary[j] < ary[min_index]
              min_index = j
          end
      end
      ary[i], ary[min_index] = ary[min_index], ary[i]
      puts ary.join(" ")
  end
end


def bubble_sort(ary)
  length = ary.length

  (0..length-2).each do |i|
      (i+1..length-1).to_a.reverse.each do |j|
          if ary[j-1] > ary[j]
              ary[j-1], ary[j] = ary[j], ary[j-1]
          end
      end
      puts ary.join(" ")
  end
end



ary = (1..5).to_a.shuffle
p ary
insertion_sort(ary)
#selection_sort(ary)
