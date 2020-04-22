p "Please enter an integer greater than 0:"
integer = gets.chomp.to_i
p "Enter 's' to compute the sum, 'p' to compute the product."
command = gets.chomp
range = (1..integer)
sum= range.reduce(:+)
product= range.reduce(:*)

if command == "s"
  p "The sum of the integers between 1 and #{integer} is #{sum}"
elsif command == "p"
  p "the product of the integers between 1 and #{integer} is #{product}"
end
