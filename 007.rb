primes = []
i = 2
while primes.length < 10001
  primes.push i unless primes.any? {|p| 0 == i%p}
  i += 1
end
puts primes.last
