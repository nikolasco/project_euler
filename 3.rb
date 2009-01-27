comp = 600851475143
divisors = (2..Math.sqrt(comp)).select do |i|
  ret = 0 == comp % i
  comp /= i while 0 == comp % i
  ret
end
puts divisors.last
