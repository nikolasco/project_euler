FAC = [1]
(1..9).each {|n| FAC[n] = FAC[n-1]*n}
MAX_D = (Math.log(FAC[-1])/Math.log(10)).ceil + 1
sum = 0
(10...10**MAX_D).each do |i|
  i_orig = i
  sum_f = 0
  until i.zero?
    d = i%10
    i /= 10
    sum_f += FAC[d]
  end
  sum += i_orig if i_orig == sum_f
end
puts sum
