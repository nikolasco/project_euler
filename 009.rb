TOT=1000
(1...TOT).each do |a|
  (a..TOT).each do |b|
    c = TOT-a-b
    next if c < 0
    if c*c == a*a + b*b
      puts a*b*c
      exit
    end
  end
end
