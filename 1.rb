puts (1...1000).inject(0) {|s, i| (0 == i%5 || 0 == i%3)? s+i : s}
