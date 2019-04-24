print "How old are you? " # Imprime na tela sem a quebra de linha do puts (Put  string)
age = gets.chomp
print "How tall are you? "
height = gets.chomp # gets -> Get string
                    # .chomp -> Remove quebra de linha ao final.
print "How much do you weight? "
weight = gets.chomp

puts "So, you're #{age} years old, #{height} tall and #{weight} heavy."