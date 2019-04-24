class Animal
    def initialize(race)
        @race = race
    end

    attr_accessor :race
end

class Dog < Animal
    def initialize(name, race=" ")
        super(race)
        @name = name
    end

    attr_accessor :name
end

class Person
    def initialize(name)
        @name = name
        @pet = nil
    end

    def has_a_pet?
        if @pet != nil
            return true
        else
            return false
        end
    end

    attr_accessor :pet
    attr_accessor :name
end

puts "Digite seu nome: "
print "> "

nome = gets.chomp
pessoa = Person.new(nome)

if pessoa.has_a_pet? 
    puts "My pet name is: #{pessoa.pet.name.to_s}" 
else 
    puts "Wanna have a dog? Type the name: "
    print "> "
    doggo = Dog.new(gets.chomp.to_s, "dog")
    pessoa.pet = doggo
end

puts "You're: #{pessoa.name}", "Your dog name and race are: #{pessoa.pet.name} - #{pessoa.pet.race} "