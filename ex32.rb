the_count = [1, 2, 3, 4, 5]
fruits = ['apples', 'oranges', 'pears', 'apricots']
change = [1, 'pennies', 2, 'dimes', 3, 'quarters']

# Forma de loop, menos usada.
for number in the_count
    puts "This is count #{number}"
end

the_count.each {|number| puts "This is count #{number}"}

# Forma mais usada de loop. 
fruits.each do |fruit|
    puts "A fruit of type: #{fruit}"
end

puts fruits.all? { |fruit| fruit.length >= 1 }

# Forma mais usada de loop, sintaxe resumida.
change.each {|i| puts "I got #{i}"}

elements = []
# Adiciona até o último elemento, por exemplo de 0 a 5.
(0..5).each do |i|
    puts "adding #{i} to the list."
    elements.push(i)
end

# Adiciona até antes do último elemento por exemplo de 0 a 4.
(0...5).each do |i|
    puts "adding #{i} to the list."
    elements.push(i)
end

elements.each {|i| puts "Element was: #{i}"}