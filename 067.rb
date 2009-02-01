Pair = Struct.new :num, :max_path
TRI=File.open("067_triangle.txt").read.split("\r\n").map {|l| l.split.map {|n| Pair.new(n.to_i)}}
TRI[0][0].max_path = TRI[0][0].num
TRI.each_index do |i|
  next if i.zero?
  TRI[i].each_index do |j|
    TRI[i][j].max_path = TRI[i][j].num +
      [j.zero?              ? 0 : TRI[i-1][j-1].max_path,
       TRI[i-1].length == j ? 0 : TRI[i-1][j].max_path].
      max
  end
end
puts TRI[-1].map {|p| p.max_path}.max
