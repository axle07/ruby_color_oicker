arrLength = ARGV.first.to_i
rgb = Array.new(arrLength) { Array.new(3, 127) }
interval1 = 127
i = 0
j = 0

while j < arrLength - 2
  i = 0
  while i < 3
    rgb[j][i] -= interval1
    i += 1
    j += 1
  end
  i = 0
  while i < 3
    rgb[j][i] -= interval1
      i += 1
    if i < 3
      rgb[j][i] -= interval1
    else
      rgb[j][0] -= interval1
    end
    j += 1
  end
  i = 0
  while i < 3 
    rgb[j][i] += interval1
    i += 1
    j += 1
  end
  while i < 3
    rgb[j][i] += interval1
    i += 1
    if i < 3
      rgb[j][i] += interval1
    else
      rgb[j][0] += interval1
    end
    j += 1
  end
  interval1 = (interval1 / 2.0).round
end

p rgb
#colors = rgb.map {|a| a.map {|c| "%x" % c}.join('')}
colors = rgb.map {|a| "%02X%02X%02X" % a}

puts "<html><body>"
colors.each do |color|
  puts "<div style=\"background-color: ##{color}; float: left; width:100%; height: 10px\">&nbsp;</div>"
end
puts "</body></html>"
