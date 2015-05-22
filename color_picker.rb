$colors = Array.new
intervals = [255, 0, 128, 64, 192, 32, 96, 160, 224]

def generate(n)
  a = [n, 255, 0]
  $colors << a.permutation.to_a
end

intervals.map { |i| generate(i) }
$colors.flatten!(1).uniq!

puts "<html><head></head><body>"
$colors.map { |c| puts '<div style="height: 50px; width: 100%; background-color: rgb(' + c[0].to_s + ',' +  c[1].to_s + ',' +  c[2].to_s + ')"></div>' }
puts "</body></html>"
