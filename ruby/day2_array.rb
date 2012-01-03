a = []

(1..16).each { |i| a.push(i) }

tmp = []

a.each do |value|
  tmp.push(value)

  if value % 4 == 0
    puts "Values:"
    p tmp
    tmp = []
  end

end

a.each_slice(4) { |v| p v }
