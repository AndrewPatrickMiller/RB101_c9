=begin
Title:
-------------------------Process The Problem
  Input: length of the fibonaci number
  Output: the index at which the fibonaci number occurs
  Requirements: the first fibonacia number has index 1
  Rules: a fibonaci number is the sum of the two previous numbers in a series. the first two number are ones by definition
  Mental Model(stepwise):
          - put the length of the fibonaci number in and then we find the first numnber that is that size with in the series
          - we need to create an algorithim that generates a fibonaci array that scales with the input. 
          - we need to find the number of a given length within the array.
          - we must then return the index of that number which will be one greater than its array index. 
          -
          -
          -
-------------------------Examples and Tests
find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
find_fibonacci_index_by_length(10) == 45
find_fibonacci_index_by_length(100) == 476
find_fibonacci_index_by_length(1000) == 4782
find_fibonacci_index_by_length(10000) == 47847

-------------------------Data Structures
We need an array of fibonacci numbers, and we will analyze it. 

-------------------------Algorithim(how many methods?)

- put the length of the fibonaci number in and then we find the first numnber that is that size with in the series
    convert the number to a string then find the length. 
- we need to create an algorithim that generates a fibonaci array that scales with the input.
    generate a fibonaci array using the input. when the array creates a number that has a certain length then return the index of that number.
- we need to find the number of a given length within the array.
    use the function that creates the fibonacci numbers to find the length (use one method for making fibonaci numbers and one method for analyzing them )
- we must then return the index of that number which will be one greater than its array index.
    return the index of the number from the method. 
-------------------------Code
Know the :
  Data Type , Data Structure, method side-effects and return. When to extract a method. 
--------------------------------------------------------------------------------
=end
require "pry-byebug"



def make_fibonacci_array(fiblength)
 
  fib_array = [1,1]
    loop do 
      fib_array.append(fib_array[-2] + fib_array[-1]) 
        if"#{fib_array[-1]}".length == fiblength
          break
        end
    end
  index = fib_array.index(fib_array[-1]) + 1
   index
end

def find_fibonacci_index_by_length(fib_length)
  make_fibonacci_array(fib_length)
end

p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847

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
