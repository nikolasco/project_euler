require 'set'
MAX = 100
s = Set.new
(2..MAX).each {|a| (2..MAX).each {|b| s << a**b}}
puts s.size
