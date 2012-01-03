def grep(pattern, filename)
  File.foreach(filename).with_index do |line, index|
    puts "#{filename}:#{index} #{line}" if line =~ pattern
  end
end

pattern = ARGV[0]
files = ARGV[1..-1]

files.each do|a|
  grep(Regexp.new(pattern), a)
end
