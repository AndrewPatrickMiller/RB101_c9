OPERATIONS = [:+, :-, :*, :/, :%, :**]

p "==> Enter the first number:"
first_number = gets.chomp
p "==> Enter the second number:"
second_number = gets.chomp

OPERATIONS.each do |operation|
  value=[first_number,second_number].inject(operation)
  p " #{first_number} #{operation} #{second_number} = #{value}
end

#
# OPERATIONS = [:+, :-, :*, :/, :%, :**]
#
# def prompt(msg)
#   puts "==> #{msg}"
# end
#
# def arithmetic_integer
#   prompt("Enter the first number:")
#   num1 = gets.chomp.to_i
#
#   prompt("Enter the second number:")
#   num2 = gets.chomp.to_i
#
#   OPERATIONS.each do |operation|
#     prompt("#{num1} #{operation} #{num2} = #{[num1, num2].inject(operation)}")
#   end
# end
