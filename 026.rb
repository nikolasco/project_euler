def gcd(a,b)
  a, b = b, a%b until b.zero?
  a
end

MAX=1000
pairs = (2...MAX).map do |m|
  if (m%2).zero? or (m%5).zero?
    [0, m]
  else
    pow = 1
    pow += 1 until 1 == (10**pow)%m
    [pow, m]
  end
end
puts pairs.max.last
