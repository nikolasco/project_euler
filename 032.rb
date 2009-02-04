# XXX: violates one minute rule due to some ineffeciencies
def perm_digits(n)
  if n.zero?
    yield []
    return
  end
  perm_digits(n-1) do |a|
    (0...n).each do |i|
      b = a.dup
      b[i,0] = n
      yield b
    end
  end
end

N = 9
sum = 0
prods = {}
perm_digits(N) do |n|
  (1...N). each do |a|
    (a+1...N). each do |b|
      parts = [n[0,a], n[a,b-a], n[b,N-b]].map {|arr| arr.inject(0) {|p,d| 10*p + d} }
      next unless parts[0] * parts[1] == parts[2]
      sum += parts[2] unless prods[parts[2]]
      prods[parts[2]] ||= true
    end
  end
end
puts sum
