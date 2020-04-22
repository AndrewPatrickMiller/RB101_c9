=begin
Title: Alphabetical Numbers
-------------------------Process The Problem
  Input: take an array of integers between 0 and 19 and
  Output: order those numbers by their words alphabetical order
  Requirements: array of numbers in and out
  Rules: alphabetical order by name of number
  Mental Model(stepwise):
          - make a hash to convert between words and numbers
          - take the numbers and convert them to their words
          - then sort them alphabetically
          - then take the words and convert them back ot their numbers
          -
          -
          -
          -
-------------------------Examples and Tests
alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]

-------------------------Data Structures
we will stick with arrays and hashes. We will use enumerators to convert through the
CONVERT hash. strings for alphanetizing

-------------------------Algorithim

- make a hash to convert between words and numbers
CONVERT = {
1 => "one",
2 => "two",
3 => "three",
4 => "four",
5 => "five",
6 => "six",
7 => "seven",
8 => "eight",
9 => "nine",
10 => "ten",
11 => "eleven",
12 => "twelve",
13 => "thirteen",
14 => "fourteen",
15 => "fifteen",
16 => "sixteen",
17 => "seventeen",
18 => "eighteen",
19 => "nineteen"
}
- take the numbers and convert them to their words
 array of words
 array.each do  CONVERT using the has key to output the string plug the string into a
 new array.
- then sort them alphabetically
sort the new array alphabetically

- then take the words and convert them back ot their numbers
pass the new array of sorted words back into the hash using the value to get the key.
-------------------------Code

CONVERT = {
0 => "zero",
1 => "one",
2 => "two",
3 => "three",
4 => "four",
5 => "five",
6 => "six",
7 => "seven",
8 => "eight",
9 => "nine",
10 => "ten",
11 => "eleven",
12 => "twelve",
13 => "thirteen",
14 => "fourteen",
15 => "fifteen",
16 => "sixteen",
17 => "seventeen",
18 => "eighteen",
19 => "nineteen"
}

def alphabetic_number_sort(array)
array_of_words=[]
  array.each do |element|
     array_of_words.push(CONVERT[element])
  end
  array_sorted_numbers= []
    array_of_words.sort.each do |word|
      array_sorted_numbers << CONVERT.key(word)
    end
    array_sorted_numbers
end

p alphabetic_number_sort((0..19).to_a)  == [  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,6, 16, 10, 13, 3, 12, 2, 0]


=end


CONVERT = {
0 => "zero",
1 => "one",
2 => "two",
3 => "three",
4 => "four",
5 => "five",
6 => "six",
7 => "seven",
8 => "eight",
9 => "nine",
10 => "ten",
11 => "eleven",
12 => "twelve",
13 => "thirteen",
14 => "fourteen",
15 => "fifteen",
16 => "sixteen",
17 => "seventeen",
18 => "eighteen",
19 => "nineteen"
}

def alphabetic_number_sort(array)
array_of_words=[]
  array.each do |element|
     array_of_words.push(CONVERT[element])
  end
  array_sorted_numbers= []
    array_of_words.sort.each do |word|
      array_sorted_numbers << CONVERT.key(word)
    end
    array_sorted_numbers
end

p alphabetic_number_sort((0..19).to_a)  == [  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,6, 16, 10, 13, 3, 12, 2, 0]
