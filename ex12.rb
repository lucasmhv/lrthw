print "Give me a number: "
number = gets.chomp.to_i

bigger = number * 100
puts "A bigger number is #{bigger}."

print "Give me another number: "
another = gets.chomp
number = another.to_i

smaller = number / 100
puts "A smaller number is #{smaller}."

### Study Drills
print "Give me a amount: "
amount = gets.chomp.to_f
descount = amount * 0.9
puts "I'll give you 10% less: #{descount}."