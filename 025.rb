p, c = 0, 1
i = 1
TARG = (10**(1000-1))
while c < TARG
  p, c = c, c+p
  i += 1
end
puts i
