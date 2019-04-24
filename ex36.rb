=begin
Game: School projects suck! Pokémon version.

Start at the class, you have a group assignment.
With whom you want to do it? Ash, Misty or Brock?
> "ash" 
> "misty" 
> "brock"
    Good choice, Brock is a smart guy.
    Where do you want to do the assignment? His or your place?
        "my place" -> 
> else
    You got stuck with Gary cuz you couldn't choose.
    Gary asks if you guys can do it in his place. Will you?
        > "yes" ->
            As you guys are working Gary's Arcanine come by.
            > "pet"
                Arcanine flamethrowers your work. Gary blames you.
                You get a F.
            > "run"
                Gary ruins your reputation at school. Not that you had any.
                And you get a F cuz he didn't complete the work.
            > "battle"
                You lose, this thing is enourmous.
            > else
                You freeze, and enters a coma. In your dreams you're journing to become Pokémon Master. You never get to be, even in your dreams.
                That's just sad. Sorry.
        > "no" ->
            Gary didn't go to your house, you can't complete the job.
            You get a F.
=end

def gary_path
    puts "You got stuck with Gary cuz you couldn't choose."
    puts "Gary asks if you guys can do it in his place. Will you?"
    print "> "
    his_place = gets.chomp.downcase

    if his_place.include? "yes"
        puts "As you two were working Gary's Arcanine came by..."
        print "> "
        arcanine = gets.chomp.downcase
        
        puts arcanine

        case arcanine
        when arcanine.include?("pet")
            puts "Arcanine flamethrowers your work. Gary blames you."
            game_over("You get a F.")
        when arcanine.include?("battle")
            puts "Gary says that you have balls to ask for a battle, he bets that if he win you have to do the rest alone, if you win he does."
            puts "Well you lose. Had you seen the size of this Arcanine?!"
            game_over("At least you did the work and got a A, good job!")
        end

    else
        game_over("Gary didn't go to your house, you cant' complete the job. You got an F!")
    end
end

def game_over(text)
    puts text
    exit(0)
end

def start
    puts "\tThat's Pokémon School!\n\tYou have a group assignment to do.\n\tWith whom do you want to do it? Ash, Brock or Misty?"
    print "> "
    choice = gets.chomp.downcase

    puts choice

    case choice
    when choice.include?("ash")
        ash_path
    when choice.include?("brock")
        brock_path
    when choice.include?("misty")
        misty_path
    else
        gary_path
    end
end

start
