
def interleave(array1,array2)
  p array1.zip(array2).flatten
  
end




interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']