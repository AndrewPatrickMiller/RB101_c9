def oddities(array)
  counter = 0
  new_arry=[]
  for numbers in array do
    array.values_at(counter)
    if counter.even?
      new_arry.push(array[counter])
    end
  counter+=1
  end
  new_arry
end

# def oddities(array)
#   result = []
#   array.select do |element|
#     result << element if array.index(element).even?
#   end
#   result
# end






p oddities([2, 3, 4, 5, 6])# == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []
