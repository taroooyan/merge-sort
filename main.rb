# -*- coding: utf-8 -*-
def split(array)
  if array[0..array.size/2-1].size <= 1
    l = array[0..array.size/2-1]
  else
    l = split(array[0..array.size/2-1])
  end
  if array[array.size/2..-1].size <= 1
    r = array[array.size/2..-1]
  else
    r = split(array[array.size/2..-1])
  end
  return merge(l, r)
end

def merge(l, r)
  array = Array.new
  i = j = 0
  loop do
    if r[j].nil?
      while !l[i].nil?
        array.push(l[i])
        i += 1
      end
      break

    elsif l[i].nil?
      while !r[j].nil?
        array.push(r[j])
        j += 1
      end
      break

    elsif l[i] == r[j]
      array.push(l[i])
      i += 1
    elsif l[i] < r[j]
      array.push(l[i])
      i += 1
    elsif l[i] > r[j]
      array.push(r[j])
      j += 1
    end
  end
  return array
end
p 'input'
p data = [1, 3, 5, 6, 20, 100, 2, 5, 9, 85, 10]

p 'ans'
p split(data)
