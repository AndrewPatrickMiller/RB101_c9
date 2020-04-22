
puts "What is your name?"
name = gets.chomp


if name[-1] == '!'
  p "hello #{name}. Why are we screaming? ".upcase
else
  p "Hello #{name}"
end
