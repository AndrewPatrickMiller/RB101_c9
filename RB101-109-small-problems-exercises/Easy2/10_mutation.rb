array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2

=begin
the methods inside of each block mutates the arguments and so it will
reassign array 1 to have names starting with cs with all upercase names and that will
pe appended into array 2 and the outcome will be resemble the original array 1 with names begining
with c and s being all uppercase
=end
