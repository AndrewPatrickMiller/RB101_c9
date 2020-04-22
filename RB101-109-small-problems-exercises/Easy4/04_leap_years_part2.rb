def leap_year?(year)
  if year % 400 == 0
    true
  elsif year % 100 == 0
    false
  else
    year % 4 == 0
  end
end

def leap_year2?(year)
  (year % 400 == 0) ||
  (year % 4 == 0 && year % 100 != 0)
end

def leap_year_part_2(year)
  if year >= 1752
    leap_year?(year)
  else
    year % 4 == 0
  end
end
