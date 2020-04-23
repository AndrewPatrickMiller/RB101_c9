
def halvsies(array)
  resulting_array=[]
  half_size = array.size/2
    if array.size.even?
      resulting_array << array[0..half_size-1]
      resulting_array << array[half_size..-1]
    else
       resulting_array << array[0..half_size]
       resulting_array << array[half_size+1..-1]
    end
end





p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]