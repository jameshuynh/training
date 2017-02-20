print 'Give me number of lines: '
n = gets.to_i # 10
array = [5, 6, 10, 15]
array[0] # 5
array[1] # 6
array[2] # 10
array[3] # 15

for i in 1..n
  if i == 1
    array = [1]
  elsif i == 2
    array = [1, 1]
  else # i = j ( j - 2 elements)
    new_array = [1]
    for k in 1..(i - 2)
      new_array << array[k - 1] + array[k]
    end
    new_array << 1
    array = new_array
  end

  for element in array
    print "#{element} "
  end

  puts ""
end
