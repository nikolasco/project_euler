sum = 0
(2**1000).to_s.each_byte {|b| sum += b.chr.to_i}
puts sum
