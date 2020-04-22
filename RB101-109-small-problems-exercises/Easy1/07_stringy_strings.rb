def stringy(integer)
  counter= 0
  n=0
  integer.times do
    if counter == 0
      n = n+ 1
      counter +=1
    elsif counter.even?
      n = n*10 +1
      counter +=1
    else
      n *= 10
      counter +=1
    end
  end
  n.to_s
end
# Terenary
# def stringy(num)
#
#   numbers = []
#
#   num.times do |index|
#     index.even? ? numbers << 1 : numbers << 0
#   end
#
#   numbers.join
# end




puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
