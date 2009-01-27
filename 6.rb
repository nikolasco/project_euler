puts ((1..100).inject(0) {|s, i| s + i})**2 -
  (1..100).inject(0) {|s, i| s + i**2}
