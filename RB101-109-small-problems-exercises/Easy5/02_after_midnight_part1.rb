
=begin
Title: After Midngiht
-------------------------Process The Problem
  Input: integer
  Output: string
  Requirements: convert minutes based time to 24 hour format
  Rules: minutes pased time is an integer and the 24 hour format is a string
  Mental Model(stepwise):
          -Take the integer input and evaluate wheter its positve or negative.
          - if it is positive then I will convert the integer to a 4 digit number
            -- convert the number to an array of digits
            -- interpolate the digits into the time
          - if it is a negative number I will convert the number to a positive number
              and then use the same method from the positive number method.
                -- adding a symbol into the interpoalted string.
          - Write a reusable method for converting a number to an array of
          - return the 24 hour result
          -
          -
-------------------------Examples and Tests
time_of_day(0) == "00:00"
time_of_day(-3) == "23:57"
time_of_day(35) == "00:35"
time_of_day(-1437) == "00:03"
time_of_day(3000) == "02:00"
time_of_day(800) == "13:20"
time_of_day(-4231) == "01:29"

-------------------------Data Structures
we will need to stick with integers and array until we get to the result and
then we can interpolate each digit into their respective location

-------------------------Algorithim

-Take the integer input and evaluate wheter its positve or negative.
if integer >= 0

else

end
- if it is positive then I will convert the integer to a 4 digit number
    if  four_digits = (integer/60) * 100
  -- convert the number to an array of digits
  -- interpolate the digits into the time
- if it is a negative number I will convert the number to a positive number
    and then use the same method from the positive number method.
      -- adding a symbol into the interpoalted string.
- Write a reusable method for converting a number to an array of
def convert_number_to_aray(integer)
  integer.digits.reverse
end
- return the 24 hour result
-------------------------Code


=end
MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def time_of_day(delta_minutes)
  delta_minutes =  delta_minutes % MINUTES_PER_DAY
  hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)
  format('%02d:%02d', hours, minutes)
end

time_of_day(0) == "00:00"
time_of_day(-3) == "23:57"
time_of_day(35) == "00:35"
time_of_day(-1437) == "00:03"
time_of_day(3000) == "02:00"
time_of_day(800) == "13:20"
time_of_day(-4231) == "01:29"
