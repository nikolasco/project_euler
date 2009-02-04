POW = 5
max_d = (Math.log(9**POW)/Math.log(10)).ceil + 1
sum = 0
(10...10**max_d).each do |i|
  i_orig = i
  sum_d = 0
  while i > 0
    sum_d += (i%10)**POW
    i /= 10
  end
  sum += sum_d if sum_d == i_orig
end
puts sum
