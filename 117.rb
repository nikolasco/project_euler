MAX = 50
ways = Array.new(MAX+1, 0)
ways[0] = 1
TILES = [4,3,2,1]
(1..MAX).each do |i|
  TILES.each do |t|
    ways[i] += ways[i-t] if i-t >= 0
  end
end
puts ways[MAX]
