class Pai
    def implicito
        puts "implicito"
    end

    def overrider
        puts "override me"
    end

    def altered
        puts "alter that"
    end
end

class Filho < Pai

    def overrider
        puts "overriding you"
    end

    def altered 
        super
        puts "my pleasure"
    end
end

pai = Pai.new
pai.implicito
pai.overrider
pai.altered
puts "-" * 10
filho = Filho.new
filho.implicito
filho.overrider
filho.altered