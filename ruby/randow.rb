nb = rand(20)

loop do
  puts "Can you find the number? Give it a try! Your guessing:"
  guessing = gets.to_i

  if guessing == nb
    puts "You've found the graal!"
    break
  elsif guessing < nb
    puts "Try a bigger number."
  else
    puts "Try a smaller number."
  end

end
