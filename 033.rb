def gcd(a,b)
  a, b = b, a%b until b.zero?
  a
end

EPS = 10**-9
MIN, MAX = 10, 100
match = []
(MIN...MAX).each do |num|
  next if 0 == num%10
  (MIN...MAX).each do |den|
    next if 0 == den%10
    next if num >= den
    use = false
    if num/10 == den/10
      use = ((num%10).to_f / (den%10) - num.to_f/den).abs < EPS
    elsif num/10 == den%10
      use = ((num%10).to_f / (den/10) - num.to_f/den).abs < EPS
    elsif num%10 == den/10
      use = ((num/10).to_f / (den%10) - num.to_f/den).abs < EPS
    elsif num%10 == den%10
      use = ((num/10).to_f / (den/10) - num.to_f/den).abs < EPS
    end
    match << [num, den] if use
  end
end

num = match.inject(1) {|n, m| n*m[0]}
den = match.inject(1) {|d, m| d*m[1]}
while (d = gcd(num,den)) > 1
  num /= d
  den /= d
end
puts den
