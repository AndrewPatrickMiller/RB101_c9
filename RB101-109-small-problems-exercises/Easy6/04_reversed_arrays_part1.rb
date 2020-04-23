=begin
Title:
-------------------------Process The Problem
  Input: array
  Output: array with the elements reversed
  Requirements: the object must stay the same object
  Rules:
  Mental Model(stepwise):
          - pass the array into a method that reassigns each element from the end back to the begining and the the elments at the begining to the end. 
          - then set the result equal to the method on the list 
          -
          -
          -
          -
          -
-------------------------Examples and Tests

-------------------------Data Structures

-------------------------Algorithim(how many methods?)

PASTE MENTAL MODEL HERE THEN FILL ALGORITHIM IN BETWEEN THE STEPS BY CODE

-------------------------Code
Know the :
  Data Type , Data Structure, method side-effects and return. When to extract a method. 
--------------------------------------------------------------------------------
=end
require "pry-byebug"

def reverse!(array)
  left_idx = 0
  right_idx = -1

  loop do
    array[left_idx], array[right_idx] = array[right_idx], array[left_idx]
    p array

    left_idx += 1
    right_idx -= 1
    break if left_idx >= array.size / 2
  end
  array
end

arr = [1, 2, 3, 4, 5]
p result = reverse!(arr)
p arr
p arr.object_id == result.object_id

# list = [1,2,3,4]
# result = reverse!(list)
# result == [4, 3, 2, 1]
# list == [4, 3, 2, 1]
# list.object_id == result.object_id

# list = %w(a b e d c)
# reverse!(list) == ["c", "d", "e", "b", "a"]
# list == ["c", "d", "e", "b", "a"]

# list = ['abc']
# reverse!(list) == ["abc"]
# list == ["abc"]

# list = []
# reverse!(list) == []
# list == []


=begin
--------------------------------------------------------------------------------
-------------------------Debugging
Personal
- Patient and Systematic
- Fanatical intention and attention to details.
General Approach
- reproduce the error consistently
- figure out a solutions
- pay attention to code "smells"
Tools
- puts vs print vs p
- return values and outputs
- terminal irb
-pry-byebug

-------------------------Follow Up Questions

Are there any words phrases or syntax of which you do not know?

Did all your methods come from the core library?
  if no, what other resources did your methods come from?

Do you know the scope of each variable, and where each variable was assigned, reassigned, or mutated?

Were the variables passed by value or by reference? (pass by reference passes the original object pass by value copies the value to a new variable)

Where do the variables point?

What are the side effects of the methods, and what are the return values?





=end
