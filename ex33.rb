i = 0
numbers = []

while i < 6
    puts "At the top i is #{i}"
    numbers.push(i)
    i += 1
    puts "Numbers now: ", numbers
    puts "At the bottom i is #{i}"
end

puts "The numbers: "
numbers.each { |num| puts num }

puts "The numbers: "
for num in numbers do
    puts num
end

puts "The numbers: "
numbers.each do |num|
    puts num
end

# Study Drills
def add_show
    puts "Digite um valor para iniciar: "
    value = gets.chomp.to_i
    puts "Até quando devemos incrementar?"
    max = gets.chomp.to_i
    puts "Qual valor devemos incrementar por vez?"
    increment_by = gets.chomp.to_i
    
    values = Array.new(max, nil)

    while value == max
        puts "Estamos em: ", value
        value += increment_by
        values.push(value)
    end

    puts "Array final ficou: "
    puts values
end