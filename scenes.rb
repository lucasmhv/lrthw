class Scene
  # template para criação de outras cenas
  def enter
    puts "Essa sala ainda não está pronta, volte mais tarde!"
    exit(0)
  end
end

class Fail < Scene
  def enter
    puts "You lose!"
    exit(1)
  end
end

class Start < Scene
  def enter
    puts "If you get 3 answers correctly you win!"
    return "randomize"
  end
end

class SceneOne < Scene
  def enter
    puts "I have a tongue but cannot talk."
    puts "I have no legs but sometimes walk."
    puts "What am I?"
    answer = gets.chomp

    if answer.include? "shoe"
      puts "Congrats, go to the next riddle."
      return "randomize"
    else
      return "fail"
    end
  end
end

class SceneTwo < Scene
  def enter
    puts "Why did the coffee file a police report?"
    answer = gets.chomp

    if answer.include? "mugged"
      return "randomize"
    else
      return "fail"
    end
  end
end

class SceneThree < Scene
  def enter
    puts "Spelled forwards I’m what you do everyday,"
    puts "spelled backwards I’m something you hate." 
    puts "What am I?"
    answer = gets.chomp

    if answer.include? "live"
      return "randomize"
    else
      return "fail"
    end
  end
end
