p "What is the bill?"
price= gets.chomp.to_f
p "What is the tip percentage?"
percent_tip= gets.chomp.to_f

tip = price*(percent_tip/100)
total = price + percent_tip
p "The tip is $#{tip}"
p "The total is $#{total}"
