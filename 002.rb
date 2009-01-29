prev = 1
cur = 1
sum = 0
while cur <= 4_000_000
  sum += cur if 0 == cur%2
  prev, cur = cur, cur+prev
end
puts sum

