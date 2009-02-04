N = 1001
sum = 0
n = 1
count = 0
step = 2
while n <= N**2
  sum += n
  n += step
  count += 1
  step += 2 if 0 == count % 4 
end
puts sum
