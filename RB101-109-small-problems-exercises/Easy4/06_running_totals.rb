=begin
Title: Running Totals
-------------------------Process The Problem
  Input: array
  Output: array
  Requirements: the ouput array has the same number of elements as the input Array
                but the numbers are the sum of the numbers from the original array.
  Rules: input and out put must be arrays. one argument in one argyment out
  Mental Model(stepwise):
          We need to start populating a new array with the sums of sub arrays.
          - Create an array
          - Iterate through the input array and take the sum of each range of
            numbers needed for the output array
          - Append the sums of the ranges into the array in their respective spots
          - Return the new array.
          -
          -
-------------------------Examples and Tests
running_total([2, 5, 13]) == [2, 7, 20]
running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
running_total([3]) == [3]
running_total([]) == []

-------------------------Data Structures
Things maybe able to stay as arrays we will have to create a range like [0..index]
while using each with index.

-------------------------Alorithim

- Create an array
  totaler=[]
- Iterate through the input array and take the sum of each range of
- Append the sums of the ranges into the array in their respective spots
  numbers needed for the output array
   array.each_with_index do |integer, index|
      totaler[index]=  array[0..index].sum
    end
- Return the new array.
we have to right totaler at the bottom to get the return value we want

-------------------------Code
def running_total(array)
  totaler=[]
  array.each_with_index do |integer,index|
    totaler[index] = array[0..index].sum
  end
  totaler
end


=end

def running_total(array)
  totaler=[]
  array.each_with_index do |integer,index|
    totaler[index] = array[0..index].sum
  end
  totaler
end
