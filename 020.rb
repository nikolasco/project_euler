puts (1..100).inject(1) {|p, i| p*i}.to_s.split('').map {|d| d.to_i}.inject(0) {|s, d| s + d}
