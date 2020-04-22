=begin
Title:
-------------------------Process The Problem
  Input: The given number will be the 1...input the end of a range of numbers.
  Output: Sum of all the multiple of 3 or 5 in the range.
  Requirements: input is an integer and the output is an integer
  Rules:
  Mental Model(stepwise):
          - Create a range of numbers
          - Extract all of the factors of 3 or 5 out of the range
          - Sum the numbers that were extracted out of the range
          - Return the sum of the factors as an integer
-------------------------Examples and Tests
20 factors (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20) => 98
multisum(5) == 8
multisum(10) == 33

-------------------------Data Structures
Turn the range into an Array immediately

-------------------------Alorithim

- Create a range of numbers
  integers= [(1...integer)]
- Extract all of the factors of 3 or 5 out of the range
  integers.select! {|integer| integer%3 ==0 || integer%5 ==0  }
- Sum the numbers that were extracted out of the range
 integers.sum
- Return the sum of the factors as an integer
 the sum will return implicity.

-------------------------Code
def multisum(integer)
integers = [*(1...integer)]
    integers.select! {|integer| integer%3 == 0 || integer%5 == 0 }
    integers.sum
end


=end


def multisum(integer)
integers = [*(1...integer)]
    integers.select! {|integer| integer%3 == 0 || integer%5 == 0 }
    integers.sum
end


multisum(3) == 3
multisum(5) == 8
multisum(10) == 33
multisum(1000) == 234168
