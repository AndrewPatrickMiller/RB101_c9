vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]
def count_occurrences(array)
  hash={}
 for car in array do
    if hash.has_key? car
     hash[car]+=1
    else
     hash.merge!({car => 1 })
    end
  end
  hash
end

count_occurrences(vehicles)
