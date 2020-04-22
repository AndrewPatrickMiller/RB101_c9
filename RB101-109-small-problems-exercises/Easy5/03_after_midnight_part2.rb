=begin
Title: After Midnight
-------------------------Process The Problem
  Input: STRING a time of day in 24 hour format 00:00 23:30
  Output: Integer We will find the number of minutes before midnight and the number
  of minutes after midnight
  Requirements: we can not use the time and date
  Rules:  one input and one output
  Mental Model(stepwise):

          - we must convert the strings to integer
            split the string on the : . and then cal la to_I on each piece of the array
          - 24 hour time and change the hours to minutes then add the minutes to have total minutes for the day.
          - for one method we will return the total number of minutes
          - for the other method we will return the total number of minutes in a day minus the total number of minutes from that time to get the number of minutes before midnight
-------------------------Examples and Tests
after_midnight('00:00') == 0
before_midnight('00:00') == 0
after_midnight('12:34') == 754
before_midnight('12:34') == 686
after_midnight('24:00') == 0
before_midnight('24:00') == 0

-------------------------Data Structures
the time is given in strings so we must convert

string to an array of two integers


-------------------------Algorithim

- we must convert the strings to integer
array = 24hr_string.split(:).map! {|string| string.to_i}
  split the string on the : . and then cal la to_I on each piece of the array
- 24 hour time and change the hours to minutes then add the minutes to have total minutes for the day.
array[0]*60 +array[1] =total minutes
- for one method we will return the total number of minutes
 leave total minutes at end of method
- for the other method we will return the total number of minutes in a day minus the total number of minutes from that time to get the number of minutes before midnight
60*24-total_minutes = minutes_left_in_day
-------------------------Code

def after_midnight(string)
    array = string_24hr.split(:).map! {|string| string.to_i }
    total_minutes = array[0] * 60 + array[1]
end

=end



def after_midnight(string_24hr)
    array = string_24hr.split(':').map! {|string| string.to_i }
      unless array[0] == 24
        total_minutes = array[0] * 60 + array[1]
      end
      if array[0] == 24
        total_minutes = 0
      end
      total_minutes
end

def before_midnight(string_24hr)
  if string_24hr != "00:00" && string_24hr != "24:00"
  minutes_left_in_day = 60*24 - after_midnight(string_24hr)

  elsif string_24hr == "00:00" || "24:00"
    minutes_left_in_day = 0
  end
minutes_left_in_day
end

p before_midnight('12:34') == 686
p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0
