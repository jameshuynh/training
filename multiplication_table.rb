require 'colorize'

colors = %w(red blue yellow green cyan light_black magenta white)

(1..10).to_a.each do |i|
  printed_i = i < 10 ? " #{i}" : i
  (2..9).to_a.each do |j|
    if i * j < 10
      if j == 9
        print " #{j} x #{printed_i} =  #{i * j} ".send(colors[j % colors.length])
      else
        print " #{j} x #{printed_i} =  #{i * j} |".send(colors[j % colors.length])
      end
    else
      if j == 9
        print " #{j} x #{printed_i} = #{i * j}".send(colors[j % colors.length])
      else
        print " #{j} x #{printed_i} = #{i * j} |".send(colors[j % colors.length])
      end
    end
  end
  puts ""
end
