print 'Give me number of lines: '
n = gets.to_i

array = []

(1..n).to_a.each do |i|
  if i == 1
    array = [1]
  elsif i == 2
    array = [1, 1]
  else
    new_array = []

    new_array << 1
    (1..(i - 2)).to_a.each do |k|
      new_array << array[k - 1] + array[k]
    end
    new_array << 1

    array = new_array
  end

  array.each do |element|
    print "#{element} "
  end

  puts ''
end
