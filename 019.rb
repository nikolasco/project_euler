require 'date'
count = 0
(1901..2000).each do |year|
  (1..12).each do |month|
    count += 1 if Date.new(year, month, 1).wday.zero?
  end
end
puts count
