MAX = 20
a = Array.new(MAX+1) {Array.new(MAX+1, 0)}
(0..MAX).each do |i|
  (0..MAX).each do |j|
    if 0 == i and 0 == j
      a[i][j] = 1
    else
      a[i][j] += a[i-1][j] if i-1 >= 0
      a[i][j] += a[i][j-1] if j-1 >= 0
    end
  end
end
puts a[MAX][MAX]
