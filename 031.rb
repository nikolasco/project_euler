DENOMS = [200, 100, 50, 20, 10, 5, 2, 1]
$ways = 0
def change(max_val, max_d_i)
  if max_d_i == DENOMS.length-1
    $ways += 1
    return
  end

  v = max_val
  until v < 0
    change(v, max_d_i + 1)
    v -= DENOMS[max_d_i]
  end
end
change(200,0)
puts $ways
