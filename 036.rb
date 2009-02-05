MAX = 10**6
s = (0..MAX).inject(0) do |sum, n|
  ns10 = n.to_s
  ns10l = ns10.length/2
  ns2 = n.to_s(2)
  ns2l = ns2.length/2
  (ns10[0,ns10l] == ns10[-ns10l,ns10l].reverse and
   ns2[0,ns2l] == ns2[-ns2l,ns2l].reverse)? sum + n : sum
end
puts s
