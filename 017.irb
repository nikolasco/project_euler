ones = [''] +
  %w(one two three four five six seven eight nine) +
  %w(ten eleven twelve thirteen fourteen fifteen) + 
  %w(sixteen seventeen eighteen nineteen)
tens = ['',''] + %w(twenty thirty forty fifty sixty seventy eighty ninety)
sum = 0
(1..1000).each do |i|
  if i >= 1000
    sum += ones[i/1000].length
    sum += 'thousand'.length
    i %= 1000
    sum += 'and'.length unless 0 == i
  end
  if i >= 100
    sum += ones[i/100].length
    sum += 'hundred'.length
    i %= 100
    sum += 'and'.length unless 0 == i
  end
  if i >= 20
    sum += tens[i/10].length
    sum += ones[i%10].length
  else
    sum += ones[i].length
  end
end
puts sum
