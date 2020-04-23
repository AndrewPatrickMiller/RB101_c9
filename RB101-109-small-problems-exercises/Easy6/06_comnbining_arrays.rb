def merge(array1,array2)
  array = array1 + array2
  array.uniq!
end


p merge([1, 3, 5], [3, 6, 9]) #== [1, 3, 5, 6, 9]