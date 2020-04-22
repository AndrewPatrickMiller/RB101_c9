require 'date'
p "What's your age?"
age = gets.chomp.to_i
p "At what age will you retire?"
retirement_age = gets.chomp.to_i
year = Date.today.year.to_i
retirement_year = year + age
years_left = retirement_age - age
p "Its #{year}. You will retire in #{retirement_year} "
p "You have only have #{years_left}years to go "
