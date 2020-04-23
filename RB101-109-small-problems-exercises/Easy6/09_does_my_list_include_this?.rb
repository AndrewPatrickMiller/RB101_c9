# def include?(array,number)
#   array.any? number
# end

def include?(array,possible_number)
  result=  array.select do |number|
    number == possible_number
  end
  result[0] == possible_number
end










p include?([1,2,3,4,5], 3) == true
 p include?([1,2,3,4,5], 6) == false
 p include?([], 3) == false
 p include?([nil], nil) == true
 p include?([], nil) == false