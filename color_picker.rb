rgb = Array.new(18) { Array.new(3, 255) }
max_rgb = 255
j = 0
i = 0
k = 0

while j < 9
  i = 0
  while i < 3
    rgb[j][i] -= max_rgb
    i += 1
    j += 1
  end
  i = 0
  while k < 3
    rgb[j][k] -= max_rgb
      k += 1
    if k < 3 
      rgb[j][k] -= max_rgb
    else
      rgb[j][0] -= max_rgb
    end
    j += 1
  end
  k = 0
  max_rgb = (max_rgb / 2).round
end

p rgb
#colors = rgb.map {|a| a.map {|c| "%x" % c}.join('')}
colors = rgb.map {|a| "%02X%02X%02X" % a}

puts "<html><body>"
colors.each do |color|
  puts "<div style=\"background-color: ##{color}; float: left; width:100%; height: 10px\">&nbsp;</div>"
end
puts "</body></html>"
