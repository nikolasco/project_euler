max = 0
(100...1000).each do |i|
  (i...1000).each do |j|
    n = i*j
    s = n.to_s
    h = s.length/2
    if n > max and s[0,h] == s[-h,h].reverse then
      max = n 
    end
  end
end
puts max
