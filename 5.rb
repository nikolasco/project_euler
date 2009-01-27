max = 20
primes = (2..max).inject([]) {|ps, i| (ps.any? {|p| 0 == i%p})? ps : ps + [i]}
reps = Hash.new 0
(2..max).each do |i|
  primes.each do |p|
    tmp = i
    r = 0
    while 0 == tmp % p
      r += 1
      tmp /= p
    end
    reps[p] = r if r > reps[p]
  end
end
puts reps.keys.inject(1) {|m, p| m * (p**reps[p])}
