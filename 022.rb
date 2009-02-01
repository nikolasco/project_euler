sum = 0
i = 1
File.open("022_names.txt").read.split(',').sort.each do |n|
  n = n[1,n.length-2]
  sum += i * n.split('').map {|l| l[0] - 'A'[0] + 1}.inject(0) {|s, l| s+l}
  i += 1
end
puts sum
